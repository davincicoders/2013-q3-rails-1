class CreateElements < ActiveRecord::Migration
  def up
    create_table :elements, id: false do |t|
      t.integer :number
      t.string :name
      t.string :symbol
      t.integer :atomic_number
      t.float :atomic_weight
      t.string :density
      t.float :melting_point
      t.float :boiling_point
      t.integer :atomic_radius
      t.string :covalent_radius
      t.string :ionic_radius
      t.float :specific_volume
      t.string :specific_heat
      t.string :heat_fusion
      t.string :heat_evaporation
      t.string :thermal_conductivity
      t.float :pauling_electronegativity
      t.string :first_ionisation_energy
      t.string :oxidation_states
      t.string :electronic_configuration
      t.string :lattice
      t.float :lattice_constant
      t.string :category
    end
  end

  def down
    drop_table :elements
  end
end
