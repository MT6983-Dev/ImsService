.class public final Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors$hidl_discriminator;
.super Ljava/lang/Object;
.source "OptionalIPDescriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V3_0/OptionalIPDescriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final noinit:B = 0x0t

.field public static final value:B = 0x1t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 17
    const-string v0, "Unknown"

    return-object v0

    .line 16
    :pswitch_0
    const-string v0, "value"

    return-object v0

    .line 15
    :pswitch_1
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
