class PdfsController < ApplicationController
  def index

  end

  def output
    # require 'thinreports'

    report = Thinreports::Report.new(layout: "#{Rails.root}/app/pdfs/invoice.tlf")

    report.start_new_page
    # report.page.item(:title).value("ドキュメントタイトル")

    # array = 20.times.map{|i| i}

    # array.each do |item|
    #   report.list(:default).add_row do |row|
    #     row.values(id:item,name: "name #{item}")
    #   end
    # end

    # report.start_new_page
    # report.page.item(:title).value("ドキュメントタイトル２")

    file = report.generate
    puts 'Done!'

    send_data(
      file,
      filename: "filename_sample.pdf",
      type: "application/pdf",
      disposition: "inline")
  end
end