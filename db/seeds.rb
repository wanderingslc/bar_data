# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
LicenseType.create!({
                      name: 'Airport Lounge',
                      code: 'AL',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/summary_airport_lounge.pdf',
                      hours: '8:00 AM to Midnight',
                      description: 'An Airport Lounge License is issued to a person for the storage, sale, service, and consumption of alcoholic beverages on the premises of a public airport lounge. Airport lounges may be established at international airports with U.S. Customs offices',
                      liquor: true,
                      wine: true,
                      heavy_beer: true,
                      beer: true
                    })
LicenseType.create!({
                      name: 'Arena',
                      code: 'AR',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/Arena-Handbook.pdf',
                      hours: '',
                      description: '1. One sublicense must be a banquet sublicense.
                                    2. Another sublicense must be a beer recreational sublicense
                                    3. Then choose one more of the following sublicenses:
                                      • A full-service restaurant
                                      • Limited-service restaurant
                                      • Beer-only restaurant
                                      • A bar establishment
                                    More than 3 sublicenses may be chosen',
                      liquor: true,
                      wine: true,
                      heavy_beer: true,
                      beer: true

                    })
LicenseType.create!({
                      name: 'Banquet Catering',
                      code: 'BC',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/banquet_summary.pdf',
                      description: 'An On-Premise Banquet License allows the storage, sale, service, and consumption of liquor, wine, heavy beer, and beer for contracted (not open to the general public) banquet activities or contracted privately sponsored events (which are events restricted by an admission fee) on the premises of a hotel, resort facility, sports center, convention center,  performing arts facility, or an Arena.  All banquet licenses must be able to host conventions and conferences, have adequate kitchen or culinary facilities on the premises and be able to provide complete meals. Alcoholic beverages may be sold on any day from 10 a.m. until 1 a.m.  Each banquet licensee must maintain at least 50% of its total banquet business from the sale of food.',
                      liquor: true,
                      wine: true,
                      heavy_beer: true,
                      beer: true
                    })
LicenseType.create!({
                      name: 'Bar Establishment',
                      code: 'CL',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/summary_club.pdf',
                      description: 'A bar establishment license allows the storage, sale, service, and consumption of alcoholic beverages on the premises of a bar (a social drinking establishment), an equity  (such as a country club), or a fraternal (such as a mutual benefit or patriotic association that is organized under a lodge system).  Food must be available for customers the entire time the bar is open, but there is no required percentage of food sales.',
                      liquor: true,
                      wine: true,
                      heavy_beer: true,
                      beer: true
                    })
LicenseType.create!({
                      name: 'Beer Recreational / On Premise',
                      code: 'BE',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/handbook_beer_recreational.pdf,',
                      description: 'An on-premise beer retailer license (not a tavern) allows the sale of beer for consumption in establishments that are tied to a recreational amenity and directly adjoins the licensed premises.  The recreational amenity must be owned by the license holder or contracted with a government entity who owns the recreational amenity.  The license holder must maintain 70% food sales or may include the gross sales from the recreational amenity. ',
                      liquor: false,
                      wine: false,
                      heavy_beer: false,
                      beer: true
                    })
LicenseType.create!({
                      name: 'Hospitality Amenity',
                      code: 'HA',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/Hospitality-Amenity-Handbook.pdf',
                      description: 'Hospitality licenses or sublicenses can only be issued to a hotel, hotel licensee, or a resort licensee.

    To qualify as a hotel, the hotel must have at least 40 guest rooms for temporary sleeping accommodations for compensation. Only one hospitality premises is allowed for smaller hotels that have at least 40 to 149 guest rooms.
    If the hotel has a minimum of 150 guest rooms it may have up to three locations if the commission determines that the layout of the hotel requires more than one location for the convenience of its guests.
    To qualify as a resort the resort building must have at least 150 dwelling or lodging accommodations (50% of which must be owned by a person other than the resort licensee) and the building must be at least 400,000 square feet. The resort building must be affiliated with a ski area that abuts the resort building premises.
    A resort may also have up to three locations if the commission determines more than one location is required for the convenience of its guests.
',
                      liquor: true,
                      wine: true,
                      heavy_beer: true,
                      beer: true
                    })
LicenseType.create!({
                      name: 'Hotel License',
                      code: 'HL',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/Hotel-Summary.pdf',
                      description: 'The hotel license allows a hotel to have three or more sublicenses within its premises boundaries.  One advantage is that the hotel license is NOT subject to the regular quota restrictions.  Therefore, some licenses, such as a bar (that may be more difficult to get under normal circumstances) would be more readily available.  Renewals are also less expensive than having separate licenses.  Hotels with a minimum of 150 guest rooms may still operate multiple locations of their full restaurant, limited restaurant, or bar locations within a hotel.',
                      liquor: true,
                      wine: true,
                      heavy_beer: true,
                      beer: true
                    })
LicenseType.create!({
                      name: 'Master License',
                      code: 'Unknown',
                      url: 'https://abc.utah.gov/licenses-permits/retail-licenses/',
                      description: 'Master Licenses were created for full and limited restaurants with common ownership of five or more locations, called “sublicenses.” Please contact the licensing and compliance at 801-977-6800 if you are interested in applying for a master license.

A master license and each designated sublicense are considered one license for the purposes of the quota for the restaurant type. However, each sublicense is considered in the enforcement ratio which took effect in July of 2012.',
                      liquor: false,
                      wine: false,
                      heavy_beer: false,
                      beer: false
                    })
LicenseType.create!({
                      name: 'Off-Premise Beer',
                      code: 'OP',
                      url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/OP-Summary.pdf',
                      description: 'Licenses are issued for the storage and sale of (5% alcohol by volume or less) beer to go from retail businesses such as gas stations, convenience, and grocery stores.  Prior to July 1st, 2018, off-premises beer retailers only needed LOCAL licensing.  The law now requires all off-premises retailers to obtain a state license.',
                      liquor: false,
                      wine: false,
                      heavy_beer: false,
                      beer: true
                    })
LicenseType.create({
                     name: 'Reception Center',
                     code: 'Unknown',
                     url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/summary_reception_center.pdf',
                     description: 'The primary purpose of the reception center license is leasing its facility to a third
party for a contracted (not open to the public) banquet or event that also allows the
storage, sale, service, and consumption of all types of alcohol on its premises. The
reception center must be at least 5000 square feet and have culinary facilities
that are adequate to prepare full meals on the premises (or under the control) of the Reception Center',
                     liquor: true,
                     wine: true,
                     heavy_beer: true,
                     beer: true
                   })
LicenseType.create({
                     name: 'Resort',
                     code: 'RS',
                     url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/summary_resort.pdf',
                     description: 'Resort Licenses are issued for the storage, sale, service, and consumption of alcoholic beverages on the premises of a resort building that has at least 150 dwelling or lodging accommodations (50% of which must be owned by a person other than the resort licensee) and the building must be at least 400,000 square feet. The resort building must be affiliated with a ski area that abuts the resort building premises. Only four (4) of these resort licenses are available statewide.',
                     liquor: true,
                     wine: true,
                     heavy_beer: true,
                     beer: true
                   })
LicenseType.create({
                     name: 'Restaurant - Beer Only',
                     code: 'RB',
                     url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/handbook_restaurant_beer_only.pdf',
                     description: 'Beer-only restaurant licenses are issued for the storage, sale, service, and consumption of beer (but not heavy beer which contains more than 5% alcohol by volume) on the premises of a restaurant that is engaged primarily in serving meals to the general public.  Patrons may only purchase beer in conjunction with an order for food that is prepared, sold and served at the restaurant.  Each restaurant must maintain at least 70% of its total restaurant business from the sale of food.',
                     liquor: false,
                     wine: false,
                     heavy_beer: false,
                     beer: true
                   })
LicenseType.create({
                     name: 'Restaurant Limited',
                     code: 'RL',
                     url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/handbook_restaurant_limited.pdf',
                     description: 'Limited-service restaurant liquor licenses are issued for the storage, sale, service, and consumption of wine, heavy beer and beer on the premises of a restaurant that is engaged primarily in serving meals to the general public.  Patrons may only purchase alcoholic beverages in conjunction with an order for food that is prepared, sold and served at the restaurant. Each restaurant must maintain at least 70% of its total restaurant business from the sale of food.',
                     liquor: false,
                     wine: true,
                     heavy_beer: true,
                     beer: true
                   })
LicenseType.create({
                     name: 'Restaurant Full',
                     code: 'LR',
                     url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/handbook_restaurant.pdf',
                     description: 'Full-service restaurant liquor licenses are issued for the storage, sale, service, and consumption of liquor, wine, heavy beer and beer on the premises of a restaurant that is engaged primarily in serving meals to the general public.  Patrons may only purchase alcoholic beverages in conjunction with an order for food that is prepared, sold and served at the restaurant. Each restaurant must maintain at least 70% of its total restaurant business from the sale of food.',
                     liquor: true,
                     wine: true,
                     heavy_beer: true,
                     beer: true
                   })
LicenseType.create({
                     name: 'Tavern',
                     code: 'TV',
                     url: 'https://abc.utah.gov/wp-content/uploads/Compliance/Handbooks/handbook_beer_tavern.pdf',
                     description: 'Tavern licenses are issued for the storage, sale, service, and consumption of beer on the premises. Taverns are defined as beer bars, parlors, lounges, cabarets, and night clubs. Taverns do not have a food requirement.',
                     liquor: false,
                     wine: false,
                     heavy_beer: true,
                     beer: true
                   })
