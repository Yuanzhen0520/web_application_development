# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create!(name: 'Case Closed Manga Volume 1',
                description: %{Shinichi Kudo, a high school detective who is 
                very active with his Holmes deduction powers. However, one day, 
                while he was investigating a case, he turned back into a child due to the power of 
                    a strange drug...! ? The temporary name is "Edogawa Conan". A small detective is here! !},
                    image: 'case_closed_1.png',
                    price: 7.99 )

Product.create!(name: 'Case Closed Manga Volume 2',
                description: %{Conan follows the whereabouts of a mysterious organization 
                while staying at Kogoro's detective agency, the father of his girlfriend Ran Mouri. In order 
                    to deceive the public eye, while going to elementary school, the deduction of Conan, a small 
                    detective who helps the stray detective Kogoro Mouri behind the scenes, is clear! !},
                    image: 'case_closed_2.png',
                    price: 7.96 )

Product.create!(name: 'Case Closed Manga Volume 3',
                description: %{Even though I'm a high school student, I've shrunk to an elementary school student!! 
                Even in such a strange situation, I'm a detective, and I'm challenging one difficult case after another!!
                My name is Edogawa Conan, a small detective!!},
                    image: 'case_closed_3.png',
                    price: 9.99 )

Product.create!(name: 'Lupin the 3rd Vs Dectective Conan TV Special DVD',
                description: %{The world's greatest thief and the world's best detective finally meet in the Lupin the 3rd Vs Detective Conan TV Special!},
                    image: 'vs.png',
                    price: 17.62 )

Product.create!(name: 'Case Closed Manga Volume 60',
                description: %{A murder occurs in a karaoke room where Conan, Ran, Sonoko, and Eisuke were visiting. 
                The suspects identified by the store clerk's testimony and security cameras are four men, including Eisuke, 
                who was going to the bathroom, but the weapon that beat the victim to death has not been found from any of the suspects. 
                Furthermore, when the victim's camera was examined, it was found that only pictures of him stalking Conan and the others were taken...},
                    image: 'case_closed_60.png',
                    price: 12.00 )

