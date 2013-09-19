//
//  Contacts.h
//  ContactlyFramework
//
//  Created by Ali Raza on 18/09/2013.
//  Copyright (c) 2013 SweetPixels Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBook/AddressBook.h>

@interface Contacts : NSObject
-(NSMutableArray *)GetAllContactsFromAddressBook;
-(Boolean) CheckAddressBookAccess;

@property (nonatomic, assign) ABAddressBookRef addressBook;
@end
