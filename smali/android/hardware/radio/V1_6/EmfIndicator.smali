.class public final Landroid/hardware/radio/V1_6/EmfIndicator;
.super Ljava/lang/Object;
.source "EmfIndicator.java"


# static fields
.field public static final EMF_BOTH_NR_EUTRA_CONNECTED_TO_5GCN:B = 0x3t

.field public static final EMF_EUTRA_CONNECTED_TO_5GCN:B = 0x2t

.field public static final EMF_NOT_SUPPORTED:B = 0x0t

.field public static final EMF_NR_CONNECTED_TO_5GCN:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # B

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 41
    .local v1, "flipped":B
    const-string v2, "EMF_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 43
    const-string v2, "EMF_NR_CONNECTED_TO_5GCN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 46
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 47
    const-string v2, "EMF_EUTRA_CONNECTED_TO_5GCN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 50
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 51
    const-string v2, "EMF_BOTH_NR_EUTRA_CONNECTED_TO_5GCN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 54
    :cond_2
    if-eq p0, v1, :cond_3

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(B)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # B

    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v0, "EMF_NOT_SUPPORTED"

    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 27
    const-string v0, "EMF_NR_CONNECTED_TO_5GCN"

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 30
    const-string v0, "EMF_EUTRA_CONNECTED_TO_5GCN"

    return-object v0

    .line 32
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 33
    const-string v0, "EMF_BOTH_NR_EUTRA_CONNECTED_TO_5GCN"

    return-object v0

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
