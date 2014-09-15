json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :convenio_id, :carteiranumero, :idade, :peso, :altura, :iskid
  json.url paciente_url(paciente, format: :json)
end
