.class Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorCustomizationFactoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperatorInfo"
.end annotation


# instance fields
.field private mOperator:Ljava/lang/String;

.field private mSegment:Ljava/lang/String;

.field private mSpecification:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "optr"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "seg"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mOperator:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mSpecification:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mSegment:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    .line 55
    iget-object v0, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    .line 55
    iget-object v0, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;

    .line 55
    iget-object v0, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mSpecification:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mSpecification:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ext/OperatorCustomizationFactoryLoader$OperatorInfo;->mSegment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
