.class Lcom/mediatek/ims/MtkSuppServExt$1;
.super Landroid/telephony/PhoneStateListener;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/MtkSuppServExt;->initPhoneStateListener(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkSuppServExt;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkSuppServExt;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 482
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 485
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 487
    :pswitch_0
    new-instance v0, Lcom/mediatek/ims/MtkSuppServExt$Task;

    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    const-string v2, "Data reg state in service."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    .line 488
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->access$800(Lcom/mediatek/ims/MtkSuppServExt;)Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 489
    nop

    .line 493
    .end local v0    # "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
