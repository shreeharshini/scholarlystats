class CreateBr2s < ActiveRecord::Migration[5.0]
  def change
    create_table :br2s do |t|
      t.string :Book_Title
      t.string :Publisher_Name
      t.string :Platform
      t.string :Collection_Platform
      t.string :Book_DOI
      t.string :Proprietary_Identifier
      t.string :Report_Measurement
      t.string :ISBN
      t.string :ISSN
      t.string :Report_Type
      t.integer :Jan_2013
      t.integer :Feb_2013
      t.integer :Mar_2013
      t.integer :Apr_2013
      t.integer :May_2013
      t.integer :Jun_2013
      t.integer :Jul_2013
      t.integer :Aug_2013
      t.integer :Sep_2013
      t.integer :Oct_2013
      t.integer :Nov_2013
      t.integer :Dec_2013
      t.integer :Jan_2014
      t.integer :Feb_2014
      t.integer :Mar_2014
      t.integer :Apr_2014
      t.integer :May_2014
      t.integer :Jun_2014
      t.integer :Jul_2014
      t.integer :Aug_2014
      t.integer :Sep_2014
      t.integer :Oct_2014
      t.integer :Nov_2014
      t.integer :Dec_2014
      t.integer :Jan_2015
      t.integer :Feb_2015
      t.integer :Mar_2015
      t.integer :Apr_2015
      t.integer :May_2015
      t.integer :Jun_2015
      t.integer :Jul_2015
      t.integer :Aug_2015
      t.integer :Sep_2015
      t.integer :Oct_2015
      t.integer :Nov_2015
      t.integer :Dec_2015
      t.integer :Jan_2016
      t.integer :Feb_2016
      t.integer :Mar_2016
      t.integer :Apr_2016
      t.integer :May_2016
      t.integer :Jun_2016
      t.integer :Jul_2016
      t.integer :Aug_2016
      t.integer :Sep_2016
      t.integer :Oct_2016
      t.integer :Nov_2016
      t.integer :Dec_2016

      t.timestamps
    end
  end
end
