.class public final Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/QosFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpsecSpi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi$hidl_discriminator;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 415
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 416
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 539
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 540
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 541
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    .line 540
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 544
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 545
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 546
    new-instance v5, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;-><init>()V

    .line 547
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;
    mul-int/lit8 v6, v4, 0x8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 548
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 552
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;",
            ">;)V"
        }
    .end annotation

    .line 583
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 585
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 586
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 587
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 588
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 589
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 590
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    mul-int/lit8 v5, v3, 0x8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 595
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 596
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 480
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 481
    return v0

    .line 483
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 484
    return v1

    .line 486
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    if-eq v2, v3, :cond_2

    .line 487
    return v1

    .line 489
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    .line 490
    .local v2, "other":Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    if-eq v3, v4, :cond_3

    .line 491
    return v1

    .line 493
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 494
    return v1

    .line 496
    :cond_4
    return v0
.end method

.method public getDiscriminator()B
    .locals 1

    .line 476
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 501
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 502
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    .line 503
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 501
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .locals 4

    .line 441
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 443
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    .line 446
    invoke-static {v3}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 450
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object v0
.end method

.method public noinit(Landroid/hidl/safe_union/V1_0/Monostate;)V
    .locals 1
    .param p1, "noinit"    # Landroid/hidl/safe_union/V1_0/Monostate;

    .line 436
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    .line 437
    iput-object p1, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 438
    return-void
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 557
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    .line 558
    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 566
    add-long/2addr v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 567
    goto :goto_0

    .line 560
    :pswitch_1
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 561
    move-object v3, v0

    check-cast v3, Landroid/hidl/safe_union/V1_0/Monostate;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 562
    nop

    .line 573
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 530
    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 531
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 532
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    packed-switch v1, :pswitch_data_0

    .line 522
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :pswitch_0
    const-string v1, ".value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    goto :goto_0

    .line 512
    :pswitch_1
    const-string v1, ".noinit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    nop

    .line 525
    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public value()I
    .locals 4

    .line 461
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 462
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 463
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    .line 466
    invoke-static {v3}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 470
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public value(I)V
    .locals 1
    .param p1, "value"    # I

    .line 456
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_o:Ljava/lang/Object;

    .line 458
    return-void
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 600
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 601
    iget-byte v0, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 611
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :pswitch_0
    add-long/2addr v1, p2

    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->value()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 608
    goto :goto_0

    .line 603
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 604
    nop

    .line 614
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 576
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 577
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 578
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 579
    return-void
.end method
