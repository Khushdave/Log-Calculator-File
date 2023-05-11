//
//  HistoryDAL.swift
//  LOG CALCULTER
//
//  Created by Khush Dave on 03/04/23.
//

import UIKit

class HistoryDAL: NSObject {
    
    class func addHistory(h:History) -> Bool
    {
        var history : Bool = Bool()
        let dbConn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbConn.open()
        {
            
            let query = "insert into Mstlog (Number,Base,Result,Log,Antilog) values('\(h.Number)','\(h.Base)','\(h.Result)','\(h.Log)','\(h.Antilog)')"
            print(query);
            do{
                let resultSet = try dbConn.executeUpdate(query, withArgumentsIn: [])
                if resultSet{

                    history = true
                }
                else{
                    history = false
                }
                
            }
            catch
            {
                print("error")
            }
            
        }
        else
        {
            print("Not Connection with database")
        }
        
        dbConn.close()
        
        return history
    }
    
    class func getLog() -> [History]
    {
        var history : [History] = []
        
        let dbConn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbConn.open()
        {
            
            let query = "select * from Mstlog where Log == 1"
            do{
                let resultSet = try dbConn.executeQuery(query, values: [])
                
                while resultSet.next()
                {
                    let h: History = History()
                    h.numberid = resultSet.int(forColumn: "numberid")
                    h.Number = resultSet.double(forColumn: "Number")
                    h.Base = resultSet.double(forColumn: "Base")
                    h.Result = resultSet.double(forColumn: "Result")
                    h.Log = resultSet.double(forColumn: "Log")
                    h.Antilog = resultSet.double(forColumn: "Antilog")

                    history.append(h)
                    
                }
            }
            catch
            {
                print("error")
            }
            
        }
        else
        {
            print("Not Connection with database")
        }
        
        dbConn.close()
        
        return history
    }
    
    class func getAntilog() -> [History]
    {
        var history : [History] = []

        let dbConn = FMDatabase(path: Utility.getPath(Utility.dbName))

        if dbConn.open()
        {
            
            let query = "select * from Mstlog where Antilog == 1"
            do{
                let resultSet = try dbConn.executeQuery(query, values: [])
                

                while resultSet.next()
                {
                    let h: History = History()
                    h.numberid = resultSet.int(forColumn: "numberid")
                    h.Number = resultSet.double(forColumn: "Number")
                    h.Base = resultSet.double(forColumn: "Base")
                    h.Result = resultSet.double(forColumn: "Result")
                    h.Antilog = resultSet.double(forColumn: "Antilog")

                    history.append(h)
                    
                }
            }
            catch
            {
                print("error")
            }

        }
        else
        {
            print("Not Connection with database")
        }

        dbConn.close()

        return history
    }
    
    class func deleteHistory(h:History) -> Bool
    {
        var history : Bool = Bool()
        let dbConn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbConn.open()
        {
            
            let query = "Delete from Mstlog"
            do{
                let resultSet = try dbConn.executeUpdate(query, withArgumentsIn: [])
                if resultSet{
                    history = true
                }
                else{
                    history = false
                }
            }
            catch
            {
                print("error")
            }
            
        }
        else
        {
            print("Not Connection with database")
        }
        
        dbConn.close()
        
        return history
    }
    
    class func deleteIndividualHistory(h:History) -> Bool
    {
        var history : Bool = Bool()
        let dbConn = FMDatabase(path: Utility.getPath(Utility.dbName))
        
        if dbConn.open()
        {
            
            let query = "Delete from Mstlog where numberid = '\(h.numberid)'"
            do{
                let resultSet = try dbConn.executeUpdate(query, withArgumentsIn: [])
                if resultSet{
                    history = true
                }
                else{
                    history = false
                }
            }
            catch
            {
                print("error")
            }
            
        }
        else
        {
            print("Not Connection with database")
        }
        
        dbConn.close()
        
        return history
    }

}
