.class public final synthetic Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->lambda$onImsRemainTimeReported$2(Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V

    return-void
.end method
