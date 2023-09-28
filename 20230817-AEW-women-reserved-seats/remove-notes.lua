-- Pandoc filter for removing beamer's speaker notes from tex output

function Div(el)
  if el.classes[1] == "notes" then
    return {}
  end
end