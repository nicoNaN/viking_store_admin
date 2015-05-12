class DashboardController < ApplicationController
  def index
    # week
    @new_users_week = User.created_since 7.days.ago
    @orders_week = Order.placed_since 7.days.ago
    @revenue_week = Order.revenue_since 7.days.ago

    # month
    @new_users_month = User.created_since 30.days.ago
    @orders_month = Order.placed_since 30.days.ago
    @revenue_month = Order.revenue_since 30.days.ago

    # totals
    @users_total = User.total
    @orders_total = Order.total
    @products_total = Product.total
    @revenue_total = Order.total_revenue

    # top 3s
    @top_states = User.top_3_billing_states
    @top_cities = User.top_3_billing_cities

    # user awards
    @highest_single_order = User.highest_single_order
    @highest_lifetime = User.highest_lifetime_value
    @highest_avg_order = User.highest_avg_order
    @most_orders = User.most_orders
  end
end
