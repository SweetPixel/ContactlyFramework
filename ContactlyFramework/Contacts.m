//
//  Contacts.m
//  ContactlyFramework
//
//  Created by Ali Raza on 18/09/2013.
//  Copyright (c) 2013 SweetPixels Studios. All rights reserved.
//

#import "Contacts.h"
#import <AddressBook/AddressBook.h>

@implementation Contacts

-(id)init{
    _addressBook = ABAddressBookCreateWithOptions(NULL, NULL);
    return self;
}

-(NSMutableArray *)GetAllContactsFromAddressBook{
    return [[NSMutableArray alloc]init];
}


-(Boolean) CheckAddressBookAccess{
    switch (ABAddressBookGetAuthorizationStatus()) {
        case kABAuthorizationStatusAuthorized:
            return true;
            break;
        case kABAuthorizationStatusNotDetermined:
            [self getAddressBookAccess];
            return true;
            break;
        case kABAuthorizationStatusDenied:
            return false;
            break;
        default:
            return false;
            break;
    }
}


-(void) getAddressBookAccess{
    ABAddressBookRequestAccessWithCompletion(_addressBook, ^(bool granted, CFErrorRef error)
                                             {
                                                 if (granted)
                                                 {
                                                   
                                                 }
                                             });
    
}


@end
