//
//  DYRecordSDK.h
//  DYRecordSDK
//
//  Created by wangdenghui on 2020/2/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYRecordSDK : NSObject
/**
 * 设置平台的appkey
 * @param gameId  斗鱼后台申请的游戏id
 * @param appId  斗鱼开放平台申请的身份标识(aid)
 * @param appKey 斗鱼开放平台申请的身份密钥(key)
 * 需要在- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions中调用
*/
+ (void)configGameId:(nonnull NSString *)gameId appId:(nonnull NSString *)appId appKey:(nonnull NSString *)appKey;

/**
 * SDK默认在进入后台时会关播，如果 当前 App 支持后台运行，可以通过此属性设置
 */
+ (void)setupLiveBackgroundEnable:(BOOL)enable;

/**
 * 设置游戏的横竖屏
 * @param isLandscape 是否横屏；默认横屏
 */
+ (void)setupIsLandscape:(BOOL)isLandscape;

/**
 * 开始并展示入口
 * SDK默认在进入后台时会关播，如果 当前 App 支持后台运行，可以通过 setupLiveBackgroundEnable 配置
 *
 * 强烈建议直播过程中开启持续后台任务，以保证进入后台不会被关播
 */
+ (void)showRecorder API_AVAILABLE(ios(11.0));

/**
 * 关闭直播
 */
+ (void)closeRecorder;

/**
 *  获得从斗鱼主App回调到本app的回调
 *
 *  @param url     第三方sdk的打开本app的回调的url
 *  @param options 回调的参数
 *
 *  @return 是否处理  YES代表处理成功，NO代表不处理
 *
 *  @note 在 APPdelegate中 - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options; 调用
 */
+ (BOOL)handleOpenURL:(nonnull NSURL *)url options:(nullable NSDictionary*)options;

/**
 * 获取SDK版本号
*/
+ (nonnull NSString *)sdkVersion;

@end

NS_ASSUME_NONNULL_END
