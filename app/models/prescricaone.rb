class Prescricaone < ActiveRecord::Base
	has_many :etapanes
	has_many :linhaetapas, through: :etapanes
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
	has_many :etapanes
	belongs_to :paciente
	belongs_to :internacao
	accepts_nested_attributes_for :etapanes, :reject_if => :all_blank, :allow_destroy => true
	accepts_nested_attributes_for :linhaetapas, :reject_if => :all_blank, :allow_destroy => true
end
