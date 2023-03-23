# Define the database connection to be used for this model.
connection: "finance_data"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: finance_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finance_data_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Finance Data"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: irs_990_2014 {}

explore: irs_990_2015 {}

explore: connection_reg_r3 {}

explore: irs_990_2012 {}

explore: irs_990_ein {}

explore: irs_990_2013 {}

explore: irs_990_2017 {}

explore: irs_990_2016 {}

explore: irs_990_ez_2013 {}

explore: irs_990_ez_2012 {}

explore: irs_990_ez_2014 {}

explore: irs_990_ez_2015 {}

explore: irs_990_ez_2016 {}

explore: irs_990_ez_2017 {}

explore: irs_990_pf_2013 {}

explore: irs_990_pf_2012 {}

explore: irs_990_pf_2014 {}

explore: irs_990_pf_2015 {}

explore: irs_990_pf_2016 {}
