.class Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;
.super Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ccFeature:Ljava/lang/String;

.field final synthetic this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V
    .locals 1
    .param p1, "this$1"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 845
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;-><init>()V

    .line 940
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->ccFeature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$onDeregStarted$6$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 931
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p2}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregisterInd(II)V

    return-void
.end method

.method synthetic lambda$onReregistered$4$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 905
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onReregistered(II)V

    return-void
.end method

.method synthetic lambda$onReregistered$5$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 919
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onCallComposerChanged(I)V

    return-void
.end method

.method synthetic lambda$onStatusChanged$0$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 857
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistering(II)V

    return-void
.end method

.method synthetic lambda$onStatusChanged$1$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 874
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onRegistered(II)V

    .line 876
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    const-string v1, "+g.gsma.callcomposer"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onCallComposerChanged(I)V

    .line 879
    :cond_0
    return-void
.end method

.method synthetic lambda$onStatusChanged$2$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 886
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistering(II)V

    return-void
.end method

.method synthetic lambda$onStatusChanged$3$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$3(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .param p2, "regMode"    # I

    .line 893
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->onDeregistered(II)V

    return-void
.end method

.method public onDeregStarted(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 4
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 928
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 930
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 931
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 932
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 933
    :cond_1
    return-void
.end method

.method public onReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 6
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 901
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReregistered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v0

    .line 903
    .local v0, "regMode":I
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 904
    .local v2, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v3, v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v3

    .line 905
    .local v3, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 906
    .end local v2    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v3    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 909
    :cond_1
    const/4 v1, 0x0

    .line 911
    .local v1, "newCap":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$600(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 913
    goto :goto_2

    .line 912
    :catch_0
    move-exception v2

    .line 914
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/Capability;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    .line 915
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    const-string v3, "+g.gsma.callcomposer"

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 916
    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 917
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 918
    .local v3, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 919
    .local v4, "hdlr":Landroid/os/Handler;
    :goto_4
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 920
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_3

    .line 922
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 924
    :cond_6
    return-void
.end method

.method public onStatusChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 7
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 849
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegState()I

    move-result v0

    .line 851
    .local v0, "regState":I
    invoke-virtual {p1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 853
    .local v1, "regMode":I
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 884
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 885
    .local v3, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 886
    .local v4, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 888
    :cond_1
    goto/16 :goto_9

    .line 863
    :pswitch_1
    const/4 v2, 0x0

    .line 865
    .local v2, "capabilities":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$600(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 867
    goto :goto_2

    .line 866
    :catch_0
    move-exception v3

    .line 869
    :goto_2
    if-eqz v2, :cond_2

    .line 870
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 871
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 872
    .local v4, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v5

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v5, v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v5

    .line 873
    .local v5, "hdlr":Landroid/os/Handler;
    :goto_4
    new-instance v6, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v4, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    .end local v4    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v5    # "hdlr":Landroid/os/Handler;
    goto :goto_3

    .line 881
    :cond_4
    goto :goto_9

    .line 855
    .end local v2    # "capabilities":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 856
    .restart local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_6

    :cond_5
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 857
    .local v4, "hdlr":Landroid/os/Handler;
    :goto_6
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 858
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_5

    .line 859
    :cond_6
    goto :goto_9

    .line 891
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 892
    .restart local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v4

    goto :goto_8

    :cond_7
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v4, v4, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v4

    .line 893
    .restart local v4    # "hdlr":Landroid/os/Handler;
    :goto_8
    new-instance v5, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v3, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3$$ExternalSyntheticLambda6;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 894
    .end local v3    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v4    # "hdlr":Landroid/os/Handler;
    goto :goto_7

    .line 897
    :cond_8
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 937
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;->this$1:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVopsIndication:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 938
    return-void
.end method
