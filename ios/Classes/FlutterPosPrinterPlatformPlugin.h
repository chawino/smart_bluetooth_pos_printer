#import <Flutter/Flutter.h>
#import <CoreBluetooth/CoreBluetooth.h>

#define NAMESPACE @"smart_bluetooth_pos_printer"

@interface FlutterPosPrinterPlatformPlugin : NSObject<FlutterPlugin, CBCentralManagerDelegate, CBPeripheralDelegate>
@end

@interface SmartBTPrintStreamHandler : NSObject<FlutterStreamHandler>
@property FlutterEventSink sink;
@end