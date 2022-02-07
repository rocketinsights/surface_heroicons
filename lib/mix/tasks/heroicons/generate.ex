defmodule Mix.Tasks.Heroicons.Generate do
  use Mix.Task

  @shortdoc "Convert source SVG files into Surface components"
  def run(_) do
    Enum.each(["outline", "solid"], &loop_directory/1)

    Mix.Task.run("format")
  end

  defp loop_directory(folder) do
    src_path = "./priv/heroicons/src/#{folder}/"
    dest_path = "./lib/heroicons/#{folder}/"
    namespace = "Heroicons.#{String.capitalize(folder)}."

    File.rm_rf(dest_path)
    File.mkdir_p(dest_path)

    src_path
    |> File.ls!()
    |> Enum.filter(&(Path.extname(&1) == ".svg"))
    |> Enum.each(&create_component(folder, src_path, dest_path, namespace, &1))
  end

  defp create_component("outline" = folder, src_path, dest_path, namespace, filename) do
    svg_filepath = Path.join(src_path, filename)
    component_filepath = Path.join(dest_path, component_filename(filename))
    docs = "#{folder}/#{filename}"

    svg_content =
      File.read!(svg_filepath)
      |> String.trim()
      |> String.replace(
        "<svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"0 0 24 24\" stroke=\"currentColor\" aria-hidden=\"true\">",
        "<svg xmlns=\"http://www.w3.org/2000/svg\" class={@class} fill={@fill} viewBox=\"0 0 24 24\" stroke={@stroke} aria-hidden=\"true\">"
      )

    component_content =
      (namespace <> module_name(filename)) |> build_component(docs, svg_content, folder)

    File.write!(component_filepath, component_content)
  end

  defp create_component("solid" = folder, src_path, dest_path, namespace, filename) do
    svg_filepath = Path.join(src_path, filename)
    component_filepath = Path.join(dest_path, component_filename(filename))
    docs = "#{folder}/#{filename}"

    svg_content =
      File.read!(svg_filepath)
      |> String.trim()
      |> String.replace(
        "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\" fill=\"currentColor\" aria-hidden=\"true\">",
        "<svg xmlns=\"http://www.w3.org/2000/svg\" class={@class} viewBox=\"0 0 20 20\" fill={@fill} aria-hidden=\"true\">"
      )

    component_content =
      (namespace <> module_name(filename)) |> build_component(docs, svg_content, folder)

    File.write!(component_filepath, component_content)
  end

  defp component_filename(current_filename) do
    current_filename
    |> String.split("-")
    |> Enum.join("_")
    |> Path.basename(".svg")
    |> Kernel.<>(".ex")
  end

  defp module_name(current_filename) do
    current_filename
    |> Path.basename(".svg")
    |> String.split("-")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join("")
    |> Kernel.<>("Icon")
  end

  defp build_component(module_name, docs, svg, "outline") do
    """
    defmodule #{module_name} do
      @moduledoc "#{docs}"
      use Surface.Component

      @doc "css class"
      prop class, :css_class, default: "w-5 h-5"

      @doc "svg fill"
      prop fill, :string, default: "none"

      @doc "svg stroke"
      prop stroke, :string, default: "currentColor"

      def render(assigns) do
        ~F\"\"\"
        #{svg}
        \"\"\"
      end
    end
    """
  end

  defp build_component(module_name, docs, svg, "solid") do
    """
    defmodule #{module_name} do
      @moduledoc "#{docs}"
      use Surface.Component

      @doc "css class"
      prop class, :css_class, default: "w-5 h-5"

      @doc "svg fill"
      prop fill, :string, default: "currentColor"

      def render(assigns) do
        ~F\"\"\"
        #{svg}
        \"\"\"
      end
    end
    """
  end
end
