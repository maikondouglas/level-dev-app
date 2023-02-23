module RentalHelper
  STATUS_COLORS = {
    scheduled: 'primary',
    ongoing: 'warning',
    finalized: 'success'
  }.freeze

  def status(status)
    content_tag :span, t(status), class: "bg bg-#{STATUS_COLORS[status.to_sym]}"
  end
end
