=begin
Insights Service Catalog API

This is a API to fetch and order catalog items from different cloud sources

OpenAPI spec version: 1.0.0
Contact: you@your-company.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end
class AdminsController < ApplicationController

  def add_portfolio
    portfolio = Portfolio.create(:name        => params[:name],
                                 :description => params[:description],
                                 :image_url   => params[:url],
                                 :enabled     => params[:enabled])
    render json: portfolio
  end

  def list_portfolios
    portfolios = Portfolio.all
    render json: portfolios
  end
end