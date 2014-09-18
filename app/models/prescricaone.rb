class Prescricaone < ActiveRecord::Base
	has_attached_file :autorizacao, :styles => { :dpi300 => "2480x3508>", :dpi150 => "1240x1754>" }, :default_url => "/images/:style/missing.png"
	validates_attachment :autorizacao,  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png","application/pdf"] },
	:size => { :in => 0..2.megabytes }
	has_attached_file :contamedica, :styles => { :dpi300 => "2480x3508>", :dpi150 => "1240x1754>" }, :default_url => "/images/:style/missing.png"
	validates_attachment :contamedica,  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png","application/pdf"] },
	:size => { :in => 0..2.megabytes }
	has_attached_file :checagem, :styles => { :dpi300 => "2480x3508>", :dpi150 => "1240x1754>" }, :default_url => "/images/:style/missing.png"
	validates_attachment :checagem,  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png","application/pdf"] },
	:size => { :in => 0..2.megabytes }
	has_attached_file :entrega, :styles => { :dpi300 => "2480x3508>", :dpi150 => "1240x1754>" }, :default_url => "/images/:style/missing.png"
	validates_attachment :entrega,  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png","application/pdf"] },
	:size => { :in => 0..2.megabytes }
	belongs_to :paciente
	belongs_to :internacao
end
