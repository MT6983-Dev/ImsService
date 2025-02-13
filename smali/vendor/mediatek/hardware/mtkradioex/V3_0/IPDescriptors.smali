.class public final Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;
.super Ljava/lang/Object;
.source "IPDescriptors.java"


# instance fields
.field public ipv4:Ljava/lang/String;

.field public ipv6:Ljava/lang/String;

.field public maskV4:Ljava/lang/String;

.field public port:I

.field public portEndRange:I

.field public portStartRange:I

.field public prefixLength:I

.field public protocolId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv4:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->maskV4:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv6:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->prefixLength:I

    .line 9
    iput v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->port:I

    .line 10
    iput v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portStartRange:I

    .line 11
    iput v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portEndRange:I

    .line 12
    iput v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->protocolId:I

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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 101
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 102
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    .line 101
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 105
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 107
    new-instance v5, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;

    invoke-direct {v5}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;-><init>()V

    .line 108
    .local v5, "_hidl_vec_element":Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;
    mul-int/lit8 v6, v4, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v5    # "_hidl_vec_element":Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
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
            "Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 156
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 157
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 158
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 159
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 160
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 161
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 166
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 20
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;

    if-eq v2, v3, :cond_2

    .line 23
    return v1

    .line 25
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;

    .line 26
    .local v2, "other":Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv4:Ljava/lang/String;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv4:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 27
    return v1

    .line 29
    :cond_3
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->maskV4:Ljava/lang/String;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->maskV4:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 30
    return v1

    .line 32
    :cond_4
    iget-object v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv6:Ljava/lang/String;

    iget-object v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv6:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 33
    return v1

    .line 35
    :cond_5
    iget v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->prefixLength:I

    iget v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->prefixLength:I

    if-eq v3, v4, :cond_6

    .line 36
    return v1

    .line 38
    :cond_6
    iget v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->port:I

    iget v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->port:I

    if-eq v3, v4, :cond_7

    .line 39
    return v1

    .line 41
    :cond_7
    iget v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portStartRange:I

    iget v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portStartRange:I

    if-eq v3, v4, :cond_8

    .line 42
    return v1

    .line 44
    :cond_8
    iget v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portEndRange:I

    iget v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portEndRange:I

    if-eq v3, v4, :cond_9

    .line 45
    return v1

    .line 47
    :cond_9
    iget v3, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->protocolId:I

    iget v4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->protocolId:I

    if-eq v3, v4, :cond_a

    .line 48
    return v1

    .line 50
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 55
    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv4:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->maskV4:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv6:Ljava/lang/String;

    .line 58
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->prefixLength:I

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->port:I

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portStartRange:I

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portEndRange:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->protocolId:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 118
    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv4:Ljava/lang/String;

    .line 120
    nop

    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v8

    add-long v4, p3, v2

    add-long v10, v4, v2

    const/4 v12, 0x0

    .line 120
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 125
    const-wide/16 v4, 0x10

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->maskV4:Ljava/lang/String;

    .line 127
    nop

    .line 128
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    const/4 v14, 0x0

    .line 127
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 132
    const-wide/16 v4, 0x20

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv6:Ljava/lang/String;

    .line 134
    nop

    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 134
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 139
    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->prefixLength:I

    .line 140
    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->port:I

    .line 141
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portStartRange:I

    .line 142
    const-wide/16 v2, 0x3c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portEndRange:I

    .line 143
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->protocolId:I

    .line 144
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 91
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 92
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".ipv4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .maskV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->maskV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .ipv6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .prefixLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .port = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .portStartRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portStartRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .portEndRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portEndRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .protocolId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->protocolId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 171
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv4:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 172
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->maskV4:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 173
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->ipv6:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 174
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->prefixLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 175
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->port:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 176
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portStartRange:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 177
    const-wide/16 v0, 0x3c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->portEndRange:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 178
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->protocolId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 179
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 147
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 148
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IPDescriptors;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 150
    return-void
.end method
