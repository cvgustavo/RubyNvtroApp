json.array!(@prescricaones) do |prescricaone|
  json.extract! prescricaone, :id, :data, :custo, :valorfaturado, :paciente_id, :internacao_id, :nutricionista, :equipo, :autorizacaourl, :contamedicaurl, :checagemurl, :entregaurl, :motoqueiro
  json.url prescricaone_url(prescricaone, format: :json)
end
