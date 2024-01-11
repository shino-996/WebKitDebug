#import <Foundation/Foundation.h>

typedef struct {
	unsigned field1[8];
} SCD_Struct_RW17;

@interface RWIRelayDelegateIOS: NSObject
-(BOOL)relay:(id)arg1 allowIncomingApplicationViaProxy:(SCD_Struct_RW17)arg2 pid:(int)arg3;
@end

%hook RWIRelayDelegateIOS
-(BOOL)relay:(id)arg1 allowIncomingApplicationViaProxy:(SCD_Struct_RW17)arg2 pid:(int)arg3
{
	return YES;
}
%end