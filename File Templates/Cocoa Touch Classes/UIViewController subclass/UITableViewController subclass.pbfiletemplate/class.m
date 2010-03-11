//
//  «FILENAME»
//
//  Copyright 
//      «UNAME» - «DEVELOPEREMAIL»
//      «ORGANIZATIONNAME» 
//      «YEAR»
//  All rights reserved.
//

«OPTIONALHEADERIMPORTLINE»

/*
@interface «FILEBASENAMEASIDENTIFIER» (PrivateMethods)

@end
*/

@implementation «FILEBASENAMEASIDENTIFIER»

#pragma mark Memory Management

- (id)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
	
    }
    return self;
}

- (void)dealloc {
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

- (void)viewDidLoad {
	[super viewDidLoad];
}

#pragma mark -
#pragma mark View Methods

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/

/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/

/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/

#pragma mark -
#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tv {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString * CellIdentifier = @"Cell"; // FIXME: change this name!

	UITableViewCell * cell = [tv dequeueReusableCellWithIdentifier:CellIdentifier];

	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
	}

	// Set up the cell...

	return cell;
}

- (void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

@end
