.class Lcom/mediatek/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field mSocketId:I

.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsService;I)V
    .locals 1
    .param p2, "socketId"    # I

    .line 2499
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2500
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 2501
    iput p2, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2502
    return-void
.end method

.method private isRttSupported(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 3282
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3283
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v1

    return v1
.end method

.method private setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 8
    .param p1, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I

    .line 3257
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 3258
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->isRttSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3259
    return-void

    .line 3261
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rtt_calling_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3263
    .local v1, "isRttEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const-string v6, "ignore_rtt_mode_setting_bool"

    invoke-static {v4, v5, v6}, Lcom/mediatek/ims/ImsService;->access$6600(Lcom/mediatek/ims/ImsService;ILjava/lang/String;)Z

    move-result v4

    .line 3265
    .local v4, "isRttAlwaysOnCarrierConfig":Z
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRttEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "phoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CarrierConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3268
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    move v1, v2

    .line 3269
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    .line 3270
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v5, "setRttModeForIncomingCall: mode = 2"

    invoke-static {v3, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3271
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iget v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v3, v3, v5

    const/4 v5, 0x2

    invoke-interface {v3, v5, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    goto :goto_2

    .line 3273
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v6, "setRttModeForIncomingCall: mode = 0"

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3274
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    invoke-interface {v5, v3, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 3279
    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .line 2509
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v5, 0xa

    const/16 v6, 0xe

    const/16 v7, 0x2a

    const/16 v8, 0x29

    const/16 v9, 0x10

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1a

    .line 3238
    :sswitch_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "EVENT_RETRY_NOTIFY_INCOMING_SESSION"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3239
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 3240
    .local v0, "incomingSessionId":I
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/ims/internal/IImsCallSession;

    .line 3241
    .local v3, "c":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 3242
    .local v4, "extras":Landroid/os/Bundle;
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v5, v0, v3, v4}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 3243
    goto/16 :goto_1a

    .line 3124
    .end local v0    # "incomingSessionId":I
    .end local v3    # "c":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "extras":Landroid/os/Bundle;
    :sswitch_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive EVENT_CC_CAPABILITY_CHANGE, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3125
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v2, Landroid/os/Message;->arg1:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$2200(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3126
    goto/16 :goto_1a

    .line 3222
    :sswitch_2
    const/16 v0, 0x2b

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3223
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 3227
    :cond_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3228
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "rechecking vowifi registration"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$2500(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3229
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1a

    .line 3231
    :cond_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "vowifi registration check pass"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3233
    goto/16 :goto_1a

    .line 3212
    :sswitch_3
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3213
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 3215
    :cond_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "Query ims registration via enable report"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3217
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    .line 3218
    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3217
    invoke-interface {v0, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 3219
    goto/16 :goto_1a

    .line 2657
    :sswitch_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), EIMSUI time out:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2658
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2657
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2659
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-nez v0, :cond_46

    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2660
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-ne v0, v14, :cond_46

    .line 2661
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v0, v3

    .line 2662
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v0, v3

    .line 2663
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$2100(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2664
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$2200(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2665
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 2667
    .local v0, "oemPlugin2":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v0, :cond_3

    .line 2668
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2669
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    .line 2668
    invoke-interface {v0, v3}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_0

    .line 2669
    :cond_3
    nop

    :goto_0
    move-object v3, v11

    .line 2670
    .local v3, "imsRegOemPlugin2":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v3, :cond_4

    .line 2671
    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2672
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    .line 2671
    invoke-interface {v3, v4, v5, v13}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2674
    .end local v0    # "oemPlugin2":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v3    # "imsRegOemPlugin2":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :cond_4
    goto/16 :goto_1a

    .line 2625
    :sswitch_5
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2626
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2628
    :cond_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2629
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v13

    if-eq v3, v14, :cond_6

    .line 2630
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage(), EIMSUI flag is not 1"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2631
    return-void

    .line 2632
    :cond_6
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v3, v3, v4

    if-nez v3, :cond_7

    .line 2633
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage(), EIMSUI ims already reg"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2634
    return-void

    .line 2636
    :cond_7
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v3, v4

    .line 2637
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v3, v4

    .line 2638
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    or-int/2addr v5, v14

    aput v5, v3, v4

    .line 2639
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(), EIMSUI Reg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2640
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2639
    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2641
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-static {v3, v4, v5, v13}, Lcom/mediatek/ims/ImsService;->access$2100(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2642
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-static {v3, v4, v5, v13}, Lcom/mediatek/ims/ImsService;->access$2200(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2643
    const/4 v3, 0x0

    .line 2644
    .local v3, "isWfc":Z
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v4

    .line 2646
    .local v4, "oemPlugin1":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v4, :cond_8

    .line 2647
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2648
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    .line 2647
    invoke-interface {v4, v5}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_1

    .line 2648
    :cond_8
    nop

    :goto_1
    move-object v5, v11

    .line 2649
    .local v5, "imsRegOemPlugin1":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v5, :cond_9

    .line 2650
    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2651
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v7, v9

    .line 2650
    invoke-interface {v5, v6, v7, v3}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2653
    :cond_9
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x2710

    invoke-virtual {v1, v6, v7, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2655
    goto/16 :goto_1a

    .line 3179
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "isWfc":Z
    .end local v4    # "oemPlugin1":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v5    # "imsRegOemPlugin1":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :sswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3180
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 3183
    .local v4, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    .line 3184
    .local v5, "rat":I
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v14, :cond_a

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_a

    .line 3194
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3198
    :cond_a
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive EVENT_DETAIL_IMS_REGISTRATION_IND, phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3201
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v6, v5}, Lcom/mediatek/ims/ImsService;->access$6400(Lcom/mediatek/ims/ImsService;II)V

    .line 3204
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_46

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_46

    .line 3205
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/16 v6, 0x11

    invoke-static {v3, v6}, Lcom/mediatek/ims/ImsService;->access$6500(Lcom/mediatek/ims/ImsService;I)V

    goto/16 :goto_1a

    .line 3149
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "rat":I
    :sswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3150
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/ImsRegInfo;

    .line 3151
    .local v3, "info":Lcom/mediatek/ims/ImsRegInfo;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$6200(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ImsRegInfo;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-object v3, v4, v5

    .line 3152
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4, v3, v11, v5}, Lcom/mediatek/ims/ImsService;->access$6300(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    .line 3153
    goto/16 :goto_1a

    .line 2730
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "info":Lcom/mediatek/ims/ImsRegInfo;
    :sswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2731
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2732
    .local v3, "incomingCallInfo":[Ljava/lang/String;
    aget-object v4, v3, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2733
    .local v4, "type":I
    const/16 v5, 0x64

    if-ne v4, v5, :cond_46

    .line 2734
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v3}, Lcom/mediatek/ims/ImsService;->access$3600(Lcom/mediatek/ims/ImsService;I[Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3130
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "incomingCallInfo":[Ljava/lang/String;
    .end local v4    # "type":I
    :sswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3131
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    .line 3132
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 3133
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v13

    .line 3134
    .local v3, "vops":I
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_VOPS_STATUS_IND, vops = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3136
    .end local v3    # "vops":I
    goto/16 :goto_1a

    .line 3137
    :cond_b
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive EVENT_VOPS_STATUS_IND, ar.result is null,  phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2500(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3140
    :cond_c
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive EVENT_VOPS_STATUS_IND, ar is null,  phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2500(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3142
    goto/16 :goto_1a

    .line 3145
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->notifyImsServiceReady()V

    .line 3146
    goto/16 :goto_1a

    .line 3110
    :sswitch_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v4}, Lcom/mediatek/ims/ImsService;->access$6100(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 3111
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v13, v12}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    goto/16 :goto_1a

    .line 3097
    :sswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3098
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_46

    .line 3099
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 3100
    .local v3, "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_NEW_SMS, mSocketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3101
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 3102
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newImsSmsInd([BLjava/lang/String;)V

    .line 3105
    .end local v3    # "pdu":[B
    :cond_d
    goto/16 :goto_1a

    .line 3085
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3086
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_46

    .line 3087
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 3088
    .restart local v3    # "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_STATUS_REPORT, mSocketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3089
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 3090
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newStatusReportInd([BLjava/lang/String;)V

    .line 3093
    .end local v3    # "pdu":[B
    :cond_e
    goto/16 :goto_1a

    .line 3118
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive EVENT_UT_CAPABILITY_CHANGE, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3119
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v2, Landroid/os/Message;->arg1:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$2200(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3120
    goto/16 :goto_1a

    .line 3043
    :sswitch_f
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 3044
    .local v0, "phone_id":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 3046
    .local v3, "token":I
    const/4 v4, 0x0

    .line 3047
    .local v4, "messageRef":I
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 3049
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_f

    .line 3050
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/ims/MtkSmsResponse;

    iget v4, v6, Lcom/mediatek/ims/MtkSmsResponse;->mMessageRef:I

    goto :goto_2

    .line 3052
    :cond_f
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v7, "handleMessage() : MtkSmsResponse was null"

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3055
    :goto_2
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_10

    .line 3056
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : SMS send complete, messageRef: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3057
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 3058
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v6, v3, v4, v14, v13}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    goto :goto_4

    .line 3063
    :cond_10
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v7, "handleMessage() : SMS send failed"

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3064
    const/4 v6, 0x2

    .line 3065
    .local v6, "status":I
    const/4 v7, 0x1

    .line 3066
    .local v7, "reason":I
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_11

    .line 3072
    const/4 v6, 0x4

    goto :goto_3

    .line 3073
    :cond_11
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_12

    .line 3075
    const/4 v7, 0x6

    .line 3077
    :cond_12
    :goto_3
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 3078
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$6000()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v8, v3, v4, v6, v7}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    .line 3083
    .end local v0    # "phone_id":I
    .end local v3    # "token":I
    .end local v4    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    :cond_13
    :goto_4
    goto/16 :goto_1a

    .line 2991
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : Start init call session proxy"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2993
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2994
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "callId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2995
    .local v3, "callId":Ljava/lang/String;
    const-string v4, "phoneId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2996
    .local v4, "phoneId":I
    const-string v5, "seqNum"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2998
    .local v5, "seqNum":I
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    new-instance v7, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2999
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v15

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5900(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    aget-object v16, v8, v4

    const/16 v17, 0x0

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 3000
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v9

    aget-object v19, v9, v4

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v9

    aget-object v20, v9, v4

    move-object v14, v7

    move-object/from16 v18, v8

    move-object/from16 v21, v3

    move/from16 v22, v4

    invoke-direct/range {v14 .. v22}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    aput-object v7, v6, v4

    .line 3002
    new-instance v6, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 3003
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v15

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5900(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    aget-object v16, v7, v4

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 3004
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v8

    aget-object v19, v8, v4

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    aget-object v20, v8, v4

    move-object v14, v6

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v22}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 3006
    .local v6, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7, v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3007
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 3009
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v7

    .line 3010
    invoke-virtual {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 3011
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v9

    aget-object v9, v9, v4

    .line 3009
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$3100(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_14

    .line 3014
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7, v12}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setImsCallMode(I)V

    .line 3016
    :cond_14
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    aget-object v7, v7, v4

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-interface {v7, v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 3017
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    aget-object v7, v7, v4

    .line 3019
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3017
    invoke-interface {v7, v13, v8, v5, v13}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallIndication(IIII)V

    .line 3023
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_46

    .line 3025
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v8, "handleMessage() : Start deal with pending 133"

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v7

    .line 3028
    .local v7, "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 3029
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    :cond_15
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 3033
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3036
    :cond_16
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 3037
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8, v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 3038
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aput-object v11, v8, v4

    .line 3039
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v8, v9

    .line 3040
    .end local v7    # "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    goto/16 :goto_1a

    .line 2910
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "phoneId":I
    .end local v5    # "seqNum":I
    .end local v6    # "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    :sswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 2911
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v4, v0, v13

    .line 2912
    .local v4, "eccSupport":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_IMS_SUPPORT_ECC_URC, enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2918
    if-nez v4, :cond_17

    .line 2919
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    and-int/lit8 v6, v6, -0x2

    aput v6, v0, v5

    goto :goto_5

    .line 2920
    :cond_17
    if-ne v4, v14, :cond_18

    .line 2921
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    or-int/2addr v6, v14

    aput v6, v0, v5

    goto :goto_5

    .line 2922
    :cond_18
    if-ne v4, v12, :cond_19

    .line 2923
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    and-int/lit8 v6, v6, -0x11

    aput v6, v0, v5

    goto :goto_5

    .line 2924
    :cond_19
    if-ne v4, v10, :cond_1a

    .line 2925
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    or-int/2addr v6, v9

    aput v6, v0, v5

    .line 2927
    :cond_1a
    :goto_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5300(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/HashSet;

    .line 2928
    .local v5, "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    const/4 v0, 0x0

    .line 2929
    .local v0, "resultEvent":I
    if-eqz v5, :cond_46

    .line 2930
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-lez v6, :cond_1b

    .line 2931
    const/4 v0, 0x2

    move v6, v0

    goto :goto_6

    .line 2934
    :cond_1b
    const/4 v0, 0x4

    move v6, v0

    .line 2937
    .end local v0    # "resultEvent":I
    .local v6, "resultEvent":I
    :goto_6
    monitor-enter v5

    .line 2939
    :try_start_0
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2940
    .local v7, "l":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-interface {v7, v14, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationServiceCapabilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2942
    .end local v7    # "l":Lcom/android/ims/internal/IImsRegistrationListener;
    goto :goto_7

    .line 2945
    :cond_1c
    goto :goto_8

    .line 2946
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 2943
    :catch_0
    move-exception v0

    .line 2946
    :goto_8
    :try_start_1
    monitor-exit v5

    goto/16 :goto_1a

    :goto_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2898
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "eccSupport":I
    .end local v5    # "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v6    # "resultEvent":I
    :sswitch_12
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 2899
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2900
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2902
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 2903
    .local v4, "exui":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5000()Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : XUI_INFO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ImsService"

    aget-object v8, v4, v12

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2904
    :cond_1d
    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v4, v12

    invoke-virtual {v0, v5, v6}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 2906
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "exui":[Ljava/lang/String;
    :cond_1e
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v0, v4}, Lcom/mediatek/ims/ImsService;->access$5100(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 2907
    goto/16 :goto_1a

    .line 2868
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :sswitch_13
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : receive EVENT_RUN_GBA: Enter messege"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2873
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 2874
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    .line 2875
    .local v5, "nafInfoTemp":[Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;

    .line 2877
    .local v6, "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    iget-object v7, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 2878
    :try_start_2
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1f

    .line 2879
    iput v10, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2880
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_ERROR"

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_a

    .line 2882
    :cond_1f
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5000()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2883
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage() : receive EVENT_RUN_GBA: hexkey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", btid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", keylifetime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2886
    :cond_20
    new-instance v0, Lcom/mediatek/gba/NafSessionKey;

    aget-object v8, v5, v12

    aget-object v9, v5, v13

    .line 2887
    invoke-static {v9}, Lcom/mediatek/ims/ImsCommonUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    aget-object v10, v5, v10

    invoke-direct {v0, v8, v9, v10}, Lcom/mediatek/gba/NafSessionKey;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 2889
    .local v0, "nafKey":Lcom/mediatek/gba/NafSessionKey;
    iput-object v0, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    .line 2890
    iput v4, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2891
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v8, "handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_SUCCESS"

    invoke-static {v4, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2893
    .end local v0    # "nafKey":Lcom/mediatek/gba/NafSessionKey;
    :goto_a
    iget-object v0, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2894
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : receive EVENT_RUN_GBA: notify result"

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2895
    monitor-exit v7

    .line 2896
    goto/16 :goto_1a

    .line 2895
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2838
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "nafInfoTemp":[Ljava/lang/String;
    .end local v6    # "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    :sswitch_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2839
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v13

    if-ne v3, v14, :cond_21

    move v3, v14

    goto :goto_b

    :cond_21
    move v3, v13

    .line 2840
    .local v3, "enable":Z
    :goto_b
    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v4

    .line 2841
    .local v4, "simState":I
    if-eq v4, v14, :cond_23

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2842
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    const/4 v6, -0x1

    if-gt v5, v6, :cond_22

    goto :goto_c

    .line 2851
    :cond_22
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v5, v6

    goto :goto_d

    .line 2844
    :cond_23
    :goto_c
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4300(Lcom/mediatek/ims/ImsService;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 2845
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2846
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$4400(Lcom/mediatek/ims/ImsService;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 2847
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5, v14}, Lcom/mediatek/ims/ImsService;->access$4302(Lcom/mediatek/ims/ImsService;Z)Z

    .line 2849
    :cond_24
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v14, v5, v6

    .line 2853
    :goto_d
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4600(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v3, v5, v6

    .line 2854
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)I

    move-result v5

    if-nez v5, :cond_25

    .line 2855
    const-string v5, "vendor.ril.imsconfig.force.notify"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2857
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2858
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 2860
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_25
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)I

    move-result v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    shl-int v7, v14, v7

    or-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$4702(Lcom/mediatek/ims/ImsService;I)I

    .line 2861
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v3}, Lcom/mediatek/ims/ImsService;->access$4900(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2862
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : Volte_Setting_Enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", register:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2863
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWaitFeatureChange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2864
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2862
    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2865
    goto/16 :goto_1a

    .line 2826
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "enable":Z
    .end local v4    # "simState":I
    :sswitch_15
    goto/16 :goto_1a

    .line 2834
    :sswitch_16
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v14, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2835
    goto/16 :goto_1a

    .line 2831
    :sswitch_17
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v13, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2832
    goto/16 :goto_1a

    .line 2820
    :sswitch_18
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_DEREGISTERED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2821
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2822
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2823
    goto/16 :goto_1a

    .line 2817
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_19
    goto/16 :goto_1a

    .line 2785
    :sswitch_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2787
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2789
    .local v3, "eiusd":[Ljava/lang/String;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_ON_USSI, m = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2791
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v4, v14, v14, v12}, Lcom/mediatek/ims/ImsService;->onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 2793
    .local v4, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const-string v5, "dialstring"

    invoke-virtual {v4, v5, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2795
    const-string v5, "m"

    aget-object v6, v3, v13

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    const-string v5, "str"

    aget-object v6, v3, v14

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    new-instance v5, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2799
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v16

    const/16 v18, 0x0

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2803
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v20, v7, v8

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2804
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v21, v7, v8

    const-string v22, "-1"

    move-object v15, v5

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move/from16 v23, v8

    invoke-direct/range {v15 .. v23}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2808
    .local v5, "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2809
    .local v6, "ussiExtras":Landroid/os/Bundle;
    const-string v7, "android:ussd"

    invoke-virtual {v6, v7, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2810
    const-string v7, "android:imsCallID"

    const-string v8, "-1"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    const-string v7, "android:imsServiceId"

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2813
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v7, v8, v5, v6}, Lcom/mediatek/ims/ImsService;->access$4200(Lcom/mediatek/ims/ImsService;ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 2814
    goto/16 :goto_1a

    .line 2738
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "eiusd":[Ljava/lang/String;
    .end local v4    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v5    # "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    .end local v6    # "ussiExtras":Landroid/os/Bundle;
    :sswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2739
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 2744
    .local v7, "sipMessage":[Ljava/lang/String;
    if-eqz v7, :cond_46

    .line 2745
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage() : Method ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " response_code ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " reason_text ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v7, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2748
    aget-object v8, v7, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2749
    .local v8, "sipMethod":I
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2750
    .local v4, "sipResponseCode":I
    aget-object v3, v7, v3

    .line 2751
    .local v3, "sipReasonText":Ljava/lang/String;
    if-eqz v8, :cond_26

    const/16 v10, 0x9

    if-eq v8, v10, :cond_26

    if-ne v8, v5, :cond_2d

    .line 2752
    :cond_26
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v5

    .line 2753
    .local v5, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v14

    if-eq v10, v12, :cond_28

    if-eqz v5, :cond_27

    .line 2755
    invoke-interface {v5}, Lcom/mediatek/ims/ext/IImsServiceExt;->isWfcRegErrorCauseSupported()Z

    move-result v10

    if-eqz v10, :cond_27

    goto :goto_e

    .line 2779
    :cond_27
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v4, v6, v9

    goto/16 :goto_10

    .line 2756
    :cond_28
    :goto_e
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v14, v4, v8, v3}, Lcom/mediatek/ims/ImsService;->access$3900(Lcom/mediatek/ims/ImsService;IILjava/lang/String;)I

    move-result v14

    aput v14, v10, v12

    .line 2758
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v14

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v14, v14, v15

    invoke-static {v10, v12, v14}, Lcom/mediatek/ims/ImsService;->access$4000(Lcom/mediatek/ims/ImsService;II)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 2759
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v9, "triggerImsRegistrationNotify since no telephony add on"

    invoke-static {v6, v9}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_f

    .line 2760
    :cond_29
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    const/16 v12, 0x640

    if-ne v10, v12, :cond_2a

    if-nez v8, :cond_2a

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2762
    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v12

    if-eqz v10, :cond_2a

    .line 2763
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v12, "handleMessage() : L-ePDG-5025 8-13. Received SIP REG 403 response, perform ImsDiscommect flow."

    invoke-static {v10, v12}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2764
    filled-new-array {v13, v9}, [I

    move-result-object v9

    .line 2765
    .local v9, "result":[I
    new-instance v10, Landroid/os/AsyncResult;

    invoke-direct {v10, v11, v9, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2766
    .local v10, "arCip":Landroid/os/AsyncResult;
    invoke-virtual {v1, v6, v10}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v11, 0x3e8

    invoke-virtual {v1, v6, v11, v12}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2768
    .end local v9    # "result":[I
    .end local v10    # "arCip":Landroid/os/AsyncResult;
    :cond_2a
    :goto_f
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v9

    const/16 v9, 0x6a5

    if-eq v6, v9, :cond_2b

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2769
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v9

    const/16 v9, 0x646

    if-ne v6, v9, :cond_2c

    .line 2771
    :cond_2b
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-static {v6, v9, v10}, Lcom/mediatek/ims/ImsService;->access$4100(Lcom/mediatek/ims/ImsService;II)V

    .line 2774
    :cond_2c
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCode(II)V

    .line 2775
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2776
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "wfcErrorCode"

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2777
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.mediatek.permission.IMS_ERR_NOTIFICATION"

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2782
    .end local v3    # "sipReasonText":Ljava/lang/String;
    .end local v4    # "sipResponseCode":I
    .end local v5    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "sipMethod":I
    :cond_2d
    :goto_10
    goto/16 :goto_1a

    .line 2699
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "sipMessage":[Ljava/lang/String;
    :sswitch_1c
    goto/16 :goto_1a

    .line 2696
    :sswitch_1d
    goto/16 :goto_1a

    .line 2678
    :sswitch_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() : [Info]receive EVENT_IMS_ENABLING_URC, socketId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ExpImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2679
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2678
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2681
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-eq v0, v14, :cond_2e

    .line 2682
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2683
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2684
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2685
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : broadcast IMS_SERVICE_UP"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2687
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2689
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2691
    :cond_2f
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v0, v3

    .line 2693
    goto/16 :goto_1a

    .line 2952
    :sswitch_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2953
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2954
    .local v3, "callInfo":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2955
    .local v4, "msgType":I
    aget-object v5, v3, v14

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2957
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : EVENT_CALL_INFO_INDICATION, msgType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2959
    const/16 v5, 0x85

    if-ne v4, v5, :cond_46

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2960
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5400(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_46

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2961
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5400(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    aget-object v6, v3, v13

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2962
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_32

    .line 2963
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v6, "handle 133 in ImsService"

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2966
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 2967
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    .line 2968
    invoke-virtual {v5}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    .line 2969
    .local v5, "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2970
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2974
    :cond_30
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2975
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    .end local v5    # "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    :cond_31
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 2980
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 2981
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-object v11, v5, v6

    .line 2982
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v5, v6

    goto/16 :goto_1a

    .line 2984
    :cond_32
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v14, v5, v6

    goto/16 :goto_1a

    .line 2714
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "callInfo":[Ljava/lang/String;
    .end local v4    # "msgType":I
    :sswitch_20
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2715
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3100(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_33

    .line 2716
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->access$3200(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    goto :goto_11

    .line 2718
    :cond_33
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v0}, Lcom/mediatek/ims/ImsService;->access$3302(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 2719
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$3402(Lcom/mediatek/ims/ImsService;I)I

    .line 2721
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->access$3500(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    .line 2726
    :goto_11
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2700(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v3, v3, v4

    invoke-direct {v1, v3, v4}, Lcom/mediatek/ims/ImsService$MyHandler;->setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 2728
    goto/16 :goto_1a

    .line 2702
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_21
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() : [Info]EVENT_IMS_DISABLED_URC: socketId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ExpImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2703
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2702
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2704
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v14}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2705
    goto/16 :goto_1a

    .line 2707
    :sswitch_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2708
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_46

    .line 2709
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : turnOnIms failed, return to disabled state!"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2710
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;IZ)V

    goto/16 :goto_1a

    .line 2828
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_23
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v13}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2829
    goto/16 :goto_1a

    .line 2512
    :sswitch_24
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2514
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2516
    :cond_34
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2517
    invoke-virtual {v1, v7}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2519
    :cond_35
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2520
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2536
    :cond_36
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2538
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v3, 0x3

    .line 2539
    .local v3, "newImsRegInfo":I
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v13

    if-eq v4, v14, :cond_38

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1300(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    if-ne v4, v14, :cond_37

    goto :goto_12

    .line 2542
    :cond_37
    const/4 v3, 0x1

    goto :goto_13

    .line 2540
    :cond_38
    :goto_12
    const/4 v3, 0x0

    .line 2545
    :goto_13
    const-string v4, "persist.vendor.ims.simulate"

    invoke-static {v4, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v14, :cond_3a

    .line 2546
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2547
    move v4, v13

    goto :goto_14

    :cond_39
    move v4, v14

    :goto_14
    move v3, v4

    .line 2548
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage() : Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2552
    :cond_3a
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v14

    .line 2553
    .local v4, "newImsExtInfo":I
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v13

    if-ne v5, v12, :cond_3b

    .line 2554
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v5, v6

    .line 2558
    :cond_3b
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2559
    and-int/lit8 v5, v4, 0x10

    if-ne v5, v9, :cond_3c

    .line 2560
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v12, v5, v6

    goto :goto_15

    .line 2563
    :cond_3c
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v5, v6

    .line 2567
    :cond_3d
    :goto_15
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : newReg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " oldReg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2569
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v5, v6

    .line 2571
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v3, v5, v6

    .line 2572
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v7, v8

    invoke-static {v5, v6, v7, v13}, Lcom/mediatek/ims/ImsService;->access$2100(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2575
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : newRegExt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "oldRegExt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2577
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    if-nez v5, :cond_3e

    .line 2578
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v4, v5, v6

    goto :goto_16

    .line 2580
    :cond_3e
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v5, v6

    .line 2582
    :goto_16
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v7, v8

    invoke-static {v5, v6, v7, v13}, Lcom/mediatek/ims/ImsService;->access$2200(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2584
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 2585
    .local v5, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 2587
    .local v6, "ss":Landroid/telephony/ServiceState;
    if-eqz v6, :cond_41

    .line 2588
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    .line 2589
    .local v7, "dataState":I
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v8

    .line 2590
    .local v8, "dataNetType":I
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "data="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " , dataNetType="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2591
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v13

    if-nez v10, :cond_40

    .line 2592
    if-nez v7, :cond_3f

    .line 2593
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v15

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v15, v11

    invoke-static {v10, v13, v11}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_17

    .line 2595
    :cond_3f
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10, v13, v14}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_17

    .line 2598
    :cond_40
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v15

    invoke-static {v10, v13, v11}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    .line 2600
    .end local v7    # "dataState":I
    .end local v8    # "dataNetType":I
    :goto_17
    goto :goto_18

    .line 2601
    :cond_41
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-static {v7, v8, v10}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    .line 2605
    :goto_18
    const/4 v7, 0x0

    .line 2606
    .local v7, "isVoWiFi":Z
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v10

    if-ne v8, v12, :cond_42

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2607
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v10

    and-int/2addr v8, v14

    if-eq v8, v14, :cond_43

    :cond_42
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2608
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v10

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_44

    .line 2609
    :cond_43
    const/4 v7, 0x1

    .line 2612
    :cond_44
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v8

    .line 2614
    .local v8, "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v8, :cond_45

    .line 2615
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2616
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    .line 2615
    invoke-interface {v8, v9}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_19

    .line 2616
    :cond_45
    const/4 v11, 0x0

    :goto_19
    move-object v9, v11

    .line 2617
    .local v9, "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v9, :cond_46

    .line 2618
    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2619
    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    .line 2618
    invoke-interface {v9, v10, v11, v7}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2620
    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2621
    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->access$2300(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v12

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v12, v12, v13

    .line 2620
    invoke-interface {v9, v10, v11, v12}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->notifyImsRegStateWithType(III)V

    .line 3250
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "newImsRegInfo":I
    .end local v4    # "newImsExtInfo":I
    .end local v5    # "subId":I
    .end local v6    # "ss":Landroid/telephony/ServiceState;
    .end local v7    # "isVoWiFi":Z
    .end local v8    # "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v9    # "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :cond_46
    :goto_1a
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    .line 3251
    .local v0, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v0, :cond_47

    .line 3252
    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v3, v4, v2}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V

    .line 3254
    :cond_47
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_23
        0x3 -> :sswitch_22
        0x5 -> :sswitch_21
        0x7 -> :sswitch_20
        0x8 -> :sswitch_1f
        0xa -> :sswitch_1e
        0xb -> :sswitch_1d
        0xc -> :sswitch_1c
        0xd -> :sswitch_1b
        0xe -> :sswitch_24
        0xf -> :sswitch_1a
        0x10 -> :sswitch_19
        0x11 -> :sswitch_18
        0x12 -> :sswitch_17
        0x13 -> :sswitch_16
        0x15 -> :sswitch_15
        0x16 -> :sswitch_14
        0x17 -> :sswitch_13
        0x18 -> :sswitch_12
        0x19 -> :sswitch_11
        0x1b -> :sswitch_10
        0x1c -> :sswitch_f
        0x1d -> :sswitch_e
        0x1e -> :sswitch_d
        0x1f -> :sswitch_c
        0x20 -> :sswitch_b
        0x21 -> :sswitch_a
        0x22 -> :sswitch_9
        0x24 -> :sswitch_8
        0x25 -> :sswitch_7
        0x26 -> :sswitch_6
        0x28 -> :sswitch_5
        0x29 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x2c -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method
