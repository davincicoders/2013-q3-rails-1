# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130807005243) do

  create_table "elements", :id => false, :force => true do |t|
    t.integer "number"
    t.string  "name"
    t.string  "symbol"
    t.integer "atomic_number"
    t.float   "atomic_weight"
    t.string  "density"
    t.float   "melting_point"
    t.float   "boiling_point"
    t.integer "atomic_radius"
    t.string  "covalent_radius"
    t.string  "ionic_radius"
    t.float   "specific_volume"
    t.string  "specific_heat"
    t.string  "heat_fusion"
    t.string  "heat_evaporation"
    t.string  "thermal_conductivity"
    t.float   "pauling_electronegativity"
    t.string  "first_ionisation_energy"
    t.string  "oxidation_states"
    t.string  "electronic_configuration"
    t.string  "lattice"
    t.float   "lattice_constant"
    t.string  "category"
  end

end
