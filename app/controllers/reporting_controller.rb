class ReportingController < ApplicationController
  before_action :set_invoices, only: [:index, :monthly_report, :quarterly_report, :yearly_report]

  def index
    @invoices = Invoice.all
    @months = Date::MONTHNAMES.compact.reverse
    @years = Date.today.year.downto(2020)
  end

  def monthly_report
    @invoices = Invoice.where(invoice_date: params[:month].beginning_of_month..params[:month].end_of_month)
    # generate report based on @invoices data
  end

  helper_method :form_params

  def form_params
    params.permit(:month, :year)
  end

  def quarterly_report
    quarter = params[:quarter].to_i
    start_month = (quarter - 1) * 3 + 1
    end_month = start_month + 2
    start_date = Date.new(params[:year].to_i, start_month, 1)
    end_date = Date.new(params[:year].to_i, end_month, -1)
    @invoices = Invoice.where(invoice_date: start_date..end_date)
    # generate report based on @invoices data
  end

  def yearly_report
    @invoices = Invoice.where(invoice_date: Date.new(params[:year].to_i, 1, 1)..Date.new(params[:year].to_i, 12, 31))
    # generate report based on @invoices data
  end

  private

  def set_invoices
    @invoices = Invoice.all
  end

end
