//
//  Handler.swift
//  CoreiOS
//
//  Created by Mohamed Jaffer S on 27/02/20.
//

import Foundation
import CoreData

public class Handler {
    public func printer() {
        print("Inside:")
    }
        @objc func managedObjectContext() -> NSManagedObjectContext {
    
                //print("trying to fetch managedObjectContext inside FileDataHandler")
                var context : NSManagedObjectContext? = nil
                let delegate = CoreDataManager()
    
                context = delegate.managedObjectContext
                if(context == nil)
                {
                 print("managedObjectContext is nil")
                }
                return context!
            }
        
         public func getFiles() -> [Fail] {
               print("FDH: fetching file from core data")
    
               let context : NSManagedObjectContext = self.managedObjectContext()
               let fetchRequest = NSFetchRequest<Fail>(entityName: "File")
               var array = [Fail]()
               do{
                   array = try context.fetch(fetchRequest)
               } catch{
                   //error
                   print("error in fetching files \(error)")
               }
               //print("trying to fetch files: %@", array)
               return array
           }
        public func addFileToCoreData() {
            //var error : Error? = nil
            let context : NSManagedObjectContext = self.managedObjectContext()
            var array = [Fail]()
            let fetchRequest = NSFetchRequest<Fail>(entityName: "File")
            do{
                array = try context.fetch(fetchRequest)
            } catch{
                //error
            }
            //handling document duplication
            if array.count == 0 {
                let filteredfile : NSManagedObject = NSEntityDescription.insertNewObject(forEntityName: "File", into: context)
    
                filteredfile.setValue("S", forKey: "name")
                filteredfile.setValue("3", forKey: "age")
                do{
                    try context.save()
                    print("file saved in coredata")
                } catch{
                    print("error saving context \(error.localizedDescription)")
                }
            }
            else{
                print("")
            }
        }
}
