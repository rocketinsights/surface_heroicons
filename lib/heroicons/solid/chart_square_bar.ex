defmodule Heroicons.Solid.ChartSquareBarIcon do
  @moduledoc "solid/chart-square-bar.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M5 3C3.89543 3 3 3.89543 3 5V15C3 16.1046 3.89543 17 5 17H15C16.1046 17 17 16.1046 17 15V5C17 3.89543 16.1046 3 15 3H5ZM14 7C14 6.44772 13.5523 6 13 6C12.4477 6 12 6.44772 12 7V13C12 13.5523 12.4477 14 13 14C13.5523 14 14 13.5523 14 13V7ZM11 9C11 8.44772 10.5523 8 10 8C9.44772 8 9 8.44772 9 9V13C9 13.5523 9.44772 14 10 14C10.5523 14 11 13.5523 11 13V9ZM8 12C8 11.4477 7.55228 11 7 11C6.44772 11 6 11.4477 6 12V13C6 13.5523 6.44772 14 7 14C7.55228 14 8 13.5523 8 13V12Z" fill="#4B5563"/>
    </svg>
    """
  end
end
