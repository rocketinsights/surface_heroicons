defmodule Heroicons.Solid.BookOpenIcon do
  @moduledoc "solid/book-open.svg"
  use Surface.Component

  @doc "css class"
  prop(class, :css_class, default: "w-5 h-5")

  def render(assigns) do
    ~H"""
    <svg class={{ @class }} viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">

    <path d="M9 4.80423C7.9428 4.28906 6.75516 4 5.5 4C4.24484 4 3.0572 4.28906 2 4.80423V14.8042C3.0572 14.2891 4.24484 14 5.5 14C7.1686 14 8.71789 14.5108 10 15.3847C11.2821 14.5108 12.8314 14 14.5 14C15.7552 14 16.9428 14.2891 18 14.8042V4.80423C16.9428 4.28906 15.7552 4 14.5 4C13.2448 4 12.0572 4.28906 11 4.80423V12C11 12.5523 10.5523 13 10 13C9.44772 13 9 12.5523 9 12V4.80423Z" fill="#4A5568"/>
    </svg>
    """
  end
end
