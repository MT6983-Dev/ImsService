.class Lcom/mediatek/wfo/impl/WfcHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 1061
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1064
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x7d3

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1067
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1069
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1073
    .local v0, "phoneId":I
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 1075
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$mhandleModemPower(Lcom/mediatek/wfo/impl/WfcHandler;)V

    .line 1103
    .end local v0    # "phoneId":I
    .end local v1    # "mgr":Lcom/android/ims/ImsManager;
    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_OFF:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$fputmScreenState(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    .line 1105
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$fgetmScreenState(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$mnotifyEPDGScreenState(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    goto :goto_0

    .line 1106
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_ON:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$fputmScreenState(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    .line 1108
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$fgetmScreenState(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$mnotifyEPDGScreenState(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    goto :goto_0

    .line 1109
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1110
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->USER_PRESENT:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$fputmScreenState(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    .line 1111
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$4;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$fgetmScreenState(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->-$$Nest$mnotifyEPDGScreenState(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    .line 1113
    :cond_5
    :goto_0
    return-void
.end method
