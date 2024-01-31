#import the xcodeproj ruby gem
require 'xcodeproj'
#define the path to your .xcodeproj file
project_path = 'Runner.xcodeproj'
#open the xcode project
project = Xcodeproj::Project.open(project_path)
#find the group on which you want to add the file
group = project.main_group["Runner"]
#create a new variant group.
variant_group = group.new_variant_group('InfoPlist.strings')
#create an en file variant.
enFile = variant_group.new_file('en.lproj/InfoPlist.strings')
#create an ar file variant.
arFile = variant_group.new_file('ar.lproj/InfoPlist.strings')

enFile.set_source_tree("<group>")
arFile.set_source_tree("<group>")

enFile.name = 'en'
arFile.name = 'ar'

main_target = project.targets.first
main_target.add_file_references([enFile])
main_target.add_file_references([arFile])

project.save
