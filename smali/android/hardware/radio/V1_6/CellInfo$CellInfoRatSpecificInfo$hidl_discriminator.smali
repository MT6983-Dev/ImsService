.class public final Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/CellInfo$CellInfoRatSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdma:B = 0x5t

.field public static final gsm:B = 0x0t

.field public static final lte:B = 0x3t

.field public static final nr:B = 0x4t

.field public static final tdscdma:B = 0x2t

.field public static final wcdma:B = 0x1t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 25
    packed-switch p0, :pswitch_data_0

    .line 32
    const-string v0, "Unknown"

    return-object v0

    .line 31
    :pswitch_0
    const-string v0, "cdma"

    return-object v0

    .line 30
    :pswitch_1
    const-string v0, "nr"

    return-object v0

    .line 29
    :pswitch_2
    const-string v0, "lte"

    return-object v0

    .line 28
    :pswitch_3
    const-string v0, "tdscdma"

    return-object v0

    .line 27
    :pswitch_4
    const-string v0, "wcdma"

    return-object v0

    .line 26
    :pswitch_5
    const-string v0, "gsm"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
