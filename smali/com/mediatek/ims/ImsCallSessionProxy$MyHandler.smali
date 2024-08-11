.class Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final PAU_END_FLAG_FIELD:Ljava/lang/String; = ">"

.field private static final PAU_NAME_FIELD:Ljava/lang/String; = "<name:"

.field private static final PAU_NUMBER_FIELD:Ljava/lang/String; = "<tel:"

.field private static final PAU_SIP_NUMBER_FIELD:Ljava/lang/String; = "<sip:"

.field private static final PAU_VERSTAT_FIELD:Ljava/lang/String; = "verstat="


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1724
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1725
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1726
    return-void
.end method

.method private convertToImsConferenceState(Ljava/util/ArrayList;)Landroid/telephony/ims/ImsConferenceState;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/ImsCallSessionProxy$User;",
            ">;)",
            "Landroid/telephony/ims/ImsConferenceState;"
        }
    .end annotation

    .line 3506
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 3507
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11500(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3508
    const/4 v1, 0x1

    .line 3509
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3510
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3511
    .local v3, "userInfo":Landroid/os/Bundle;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v4, v4, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 3512
    .local v4, "userAddr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 3513
    .local v5, "endPoint":Ljava/lang/String;
    const-string v6, "user"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v6, v6, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    const-string v7, "display-text"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "oplus_config_ignore_display_text_bool"

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v6

    .line 3518
    .local v6, "needIgnore":Z
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packUserInfo needIgnore "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", displayText "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3519
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v10, v10, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", userAddr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3518
    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 3521
    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v8, v8, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    invoke-direct {p0, v4, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isValidCNAP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3522
    :cond_1
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v9, "Ignore display text"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3523
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    :cond_2
    const-string v7, "endpoint"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v8, v8, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    const-string v9, "status"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    const-string v8, "_"

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 3534
    :cond_3
    iget-object v7, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3535
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11500(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3529
    :cond_4
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    iget-object v7, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3531
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11500(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3532
    add-int/lit8 v1, v1, 0x1

    .line 3509
    .end local v3    # "userInfo":Landroid/os/Bundle;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "endPoint":Ljava/lang/String;
    .end local v6    # "needIgnore":Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3538
    .end local v2    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v3, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11702(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 3539
    return-object v0
.end method

.method private getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pau"    # Ljava/lang/String;

    .line 1730
    const-string v0, "\\\\"

    const-string v1, "\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1731
    const-string v0, "<ascii_34>"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "newPau":Ljava/lang/String;
    const-string v1, ""

    .line 1733
    .local v1, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1734
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "getDisplayNameFromPau() : pau is null !"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1735
    return-object v1

    .line 1737
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1738
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1739
    .local v3, "aChar":C
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 1740
    goto :goto_1

    .line 1742
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1737
    .end local v3    # "aChar":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1744
    .end local v2    # "index":I
    :cond_2
    :goto_1
    return-object v1
.end method

.method private getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .line 1749
    const-string v0, ""

    .line 1750
    .local v0, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1754
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1755
    return-object v0

    .line 1758
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1759
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1760
    const-string v2, ">"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1761
    .local v2, "endIndex":I
    if-gez v2, :cond_2

    .line 1762
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1764
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1766
    :goto_0
    return-object v0

    .line 1751
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getWfcDisconnectCause(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .line 3867
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFC] getWfcDisconnectCause mRatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3868
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v2, :cond_6

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 3873
    :cond_0
    const/4 v0, 0x0

    .line 3875
    .local v0, "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mediatek/wfo/IWifiOffloadService;->getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 3878
    goto :goto_0

    .line 3876
    :catch_0
    move-exception v3

    .line 3877
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "getWfcDisconnectCause() : RemoteException in getWfcDisconnectCause()"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3879
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    .line 3880
    return v1

    .line 3882
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/DisconnectCause;->getErrorCause()I

    move-result v3

    .line 3883
    .local v3, "wfcErrorCause":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFC] wfcErrorCause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3884
    const/16 v2, 0x7d1

    if-ne v3, v2, :cond_2

    .line 3885
    const v1, 0xf00b

    return v1

    .line 3886
    :cond_2
    const/16 v2, 0x7d3

    if-eq v3, v2, :cond_5

    const/16 v2, 0x7d5

    if-ne v3, v2, :cond_3

    goto :goto_1

    .line 3889
    :cond_3
    const/16 v2, 0x7d4

    if-ne v3, v2, :cond_4

    .line 3891
    const v1, 0xf00e

    return v1

    .line 3893
    :cond_4
    return v1

    .line 3888
    :cond_5
    :goto_1
    const v1, 0xf00d

    return v1

    .line 3870
    .end local v0    # "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    .end local v3    # "wfcErrorCause":I
    :cond_6
    :goto_2
    return v1
.end method

.method private handleDialResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3445
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3454
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v3, "handleDialResult()"

    invoke-static {v0, v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 3456
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 3457
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3458
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9102(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 3459
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    invoke-interface {v1, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getLastCallFailCause(ILandroid/os/Message;)V

    .line 3460
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3462
    .end local v0    # "result":Landroid/os/Message;
    :cond_2
    return-void

    .line 3447
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleDialResult() : ar or mListener is null"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3450
    return-void
.end method

.method private handleEconfIndication([Ljava/lang/String;)V
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .line 3237
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 3238
    .local v1, "confCallId":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v3, p1, v2

    .line 3239
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x5

    aget-object v4, p1, v4

    .line 3242
    .local v4, "joinedCallId":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEconfIndication() : receive EVENT_ECONF_RESULT_INDICATION mCallId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", conf_call_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v8, p1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", number: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v9, 0x2

    aget-object v10, p1, v9

    .line 3244
    invoke-static {v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v2, p1, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", joined_call_id:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3242
    invoke-static {v5, v2, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3248
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3249
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3252
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eq v2, v7, :cond_1

    .line 3253
    return-void

    .line 3258
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3259
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3260
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v2, :cond_2

    .line 3261
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v6, 0x7

    invoke-static {v2, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3264
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEconfIndication() : call id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is merged successfully"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3270
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3272
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 3273
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/DefaultConferenceHandler;->addFirstMergeParticipant(Ljava/lang/String;)V

    .line 3275
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10508(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 3276
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3277
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3279
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v9, :cond_d

    .line 3280
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, " successful"

    goto :goto_0

    :cond_5
    const-string v2, " failed"

    .line 3282
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEconfIndication() : 3 way conference merge result is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3285
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3286
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/DefaultConferenceHandler;->isConferenceActive()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3287
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10700(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3290
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3291
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    goto :goto_1

    .line 3295
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3299
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3302
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3303
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v5, :cond_7

    .line 3304
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 3308
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3312
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3314
    :cond_8
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    goto :goto_1

    .line 3320
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3321
    .local v5, "confCallIdInt":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(I)V

    .line 3323
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 3328
    .end local v5    # "confCallIdInt":I
    :cond_a
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10502(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3329
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3330
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3331
    .end local v2    # "ret":Ljava/lang/String;
    goto :goto_2

    .line 3334
    :cond_b
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3335
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleEconfIndication() : ConfCreated successed"

    invoke-static {v2, v5, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3337
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->setIgnoreUpdateStatus(Ljava/lang/String;Z)V

    .line 3338
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->setIgnoreUpdateStatus(Ljava/lang/String;Z)V

    .line 3339
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10700(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto :goto_2

    .line 3341
    :cond_c
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleEconfIndication() : ConfCreated failed"

    invoke-static {v0, v2, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3343
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 3346
    :cond_d
    :goto_2
    return-void
.end method

.method private handleEctIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3393
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleEctIndication()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3394
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6502(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3395
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3403
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3404
    .local v0, "result":[I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    aget v1, v0, v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    .line 3408
    :cond_1
    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    if-nez v2, :cond_3

    .line 3410
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3411
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3413
    :catch_0
    move-exception v2

    .line 3414
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "RuntimeException callSessionTransferFailed()"

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3416
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    goto :goto_1

    .line 3417
    :cond_3
    aget v2, v0, v1

    if-ne v2, v1, :cond_5

    .line 3419
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3420
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3425
    :cond_4
    goto :goto_1

    .line 3422
    :catch_1
    move-exception v2

    .line 3423
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "RuntimeException callSessionTransferred()"

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3431
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11100(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3432
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    aget v1, v0, v1

    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 3434
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11100(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3438
    goto :goto_2

    .line 3435
    :catch_2
    move-exception v1

    .line 3436
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleMessage() : RemoteException for ECT"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3440
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11102(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3441
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11002(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;

    .line 3442
    return-void

    .line 3405
    :cond_7
    :goto_3
    return-void

    .line 3397
    .end local v0    # "result":[I
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleEctIndication() : ar or mMtkImsCallSessionProxy is null"

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3400
    return-void
.end method

.method private handleEctResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3349
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3357
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    .line 3359
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleEctResult() : explicit call transfer failed!!"

    invoke-static {v1, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3362
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6502(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3365
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3366
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3368
    :catch_0
    move-exception v0

    .line 3369
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionTransferFailed()"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3371
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 3374
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleEctResult() : explicit call transfer succeeded!!"

    invoke-static {v1, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3379
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3380
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3385
    :cond_3
    goto :goto_1

    .line 3382
    :catch_1
    move-exception v0

    .line 3383
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionTransferred()"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3387
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 3351
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleEctResult() : ar or mListener is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3354
    return-void
.end method

.method private handleImsConferenceIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3465
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3466
    return-void

    .line 3468
    :cond_0
    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 3470
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleImsConferenceIndication() : ar is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3473
    return-void

    .line 3474
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3476
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleImsConferenceIndication() : mListener is null, cache info"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3479
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11302(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 3480
    return-void

    .line 3482
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 3483
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11402(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3484
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 3485
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    .line 3486
    .local v2, "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    const-string v3, "disconnected"

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3487
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11408(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 3489
    .end local v2    # "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    :cond_3
    goto :goto_0

    .line 3490
    :cond_4
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->convertToImsConferenceState(Ljava/util/ArrayList;)Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    .line 3492
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3496
    goto :goto_1

    .line 3493
    :catch_0
    move-exception v2

    .line 3494
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "RuntimeException callSessionConferenceStateUpdated()"

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3497
    .end local v0    # "confState":Landroid/telephony/ims/ImsConferenceState;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_2

    .line 3499
    :cond_5
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleImsConferenceIndication() : auto terminate"

    invoke-static {v2, v4, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3501
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 3503
    :goto_2
    return-void
.end method

.method private handlePauUpdate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pau"    # Ljava/lang/String;

    .line 3806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3807
    const/4 v0, 0x0

    return v0

    .line 3810
    :cond_0
    const-string v0, "<sip:"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3811
    .local v0, "sipNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "remote_uri"

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateAddressFromPau(Ljava/lang/String;)Z

    move-result v1

    .line 3813
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateDisplayNameFromPau(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 3814
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateVerstatFromPau(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 3815
    return v1
.end method

.method private handleRttAudioIndication(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4119
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4124
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4125
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4128
    :cond_1
    const/4 v2, 0x1

    aget v3, v0, v2

    .line 4129
    .local v3, "status":I
    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 4130
    .local v4, "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRttAudioIndication audio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_2

    move v7, v2

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4132
    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v4, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setReceivingRttAudio(Z)V

    .line 4133
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 4134
    return-void

    .line 4126
    .end local v3    # "status":I
    .end local v4    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_4
    :goto_1
    return-void

    .line 4120
    .end local v0    # "result":[I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleRttAudioIndication ar or mListener is null"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4122
    return-void
.end method

.method private handleRttCapabilityIndication(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3902
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    .line 3903
    .local v0, "callId":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 3904
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleRttCapabilityIndication ar is null"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3906
    return-void

    .line 3909
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 3910
    .local v1, "result":[I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 3911
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    .line 3914
    :cond_1
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 3915
    .local v4, "localCapability":I
    const/4 v5, 0x2

    aget v6, v1, v5

    .line 3916
    .local v6, "remoteCapability":I
    const/4 v7, 0x3

    aget v7, v1, v7

    .line 3917
    .local v7, "localTextStatus":I
    const/4 v8, 0x4

    aget v8, v1, v8

    .line 3919
    .local v8, "realRemoteTextCapability":I
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9, v4, v6, v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12100(Lcom/mediatek/ims/ImsCallSessionProxy;IIII)V

    .line 3920
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleRttCapabilityIndication local cap= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remo status= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " local status= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remo cap= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3926
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-ne v6, v3, :cond_2

    if-ne v7, v3, :cond_2

    move v10, v3

    goto :goto_0

    :cond_2
    move v10, v2

    :goto_0
    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3928
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12300(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 3930
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleRttCapabilityIndication mIsRttEnabledForCallSession: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3931
    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3930
    invoke-static {v9, v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3933
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v9, v9, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v9, v4, v6, v7, v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyTextCapabilityChanged(IIII)V

    .line 3937
    const/4 v9, 0x0

    .line 3938
    .local v9, "status":I
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3939
    const/4 v9, 0x1

    .line 3941
    :cond_3
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v10, v9}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3945
    if-ne v8, v3, :cond_4

    .line 3946
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v10, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3947
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "handleRttCapabilityIndication set remoteprofile RTT_MODE_FULL"

    invoke-static {v10, v11, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    goto :goto_1

    .line 3949
    :cond_4
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v10, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3953
    :goto_1
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3956
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6100(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3959
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3962
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/mediatek/ims/ImsService;->getRttEmcGuardTimerUtil(I)Lcom/mediatek/ims/RttEmcGuardTimerUtil;

    move-result-object v10

    .line 3963
    invoke-virtual {v10}, Lcom/mediatek/ims/RttEmcGuardTimerUtil;->checkIncomingCallInRttEmcGuardTime()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3964
    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3965
    iget-object v10, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handle RTT EMC Guard upgrade, mCallId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3967
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v5, v10, v3, v11}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->sendRttModifyRequest(IILandroid/os/Message;)V

    .line 3968
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3970
    :cond_5
    return-void

    .line 3912
    .end local v4    # "localCapability":I
    .end local v6    # "remoteCapability":I
    .end local v7    # "localTextStatus":I
    .end local v8    # "realRemoteTextCapability":I
    .end local v9    # "status":I
    :cond_6
    :goto_2
    return-void
.end method

.method private handleRttECCRedialEvent()V
    .locals 3

    .line 3973
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "notifyRttECCRedialEvent"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3974
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 3975
    return-void

    .line 3977
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRttECCRedialEvent()V

    .line 3978
    return-void
.end method

.method private handleRttModifyRequestReceived(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4069
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4074
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4075
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 4079
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$13000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 4080
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleRttModifyRequestReceived() : RTT and video not switchable"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4082
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyResponse(Z)V

    .line 4083
    return-void

    .line 4086
    :cond_2
    const/4 v2, 0x1

    aget v4, v0, v2

    .line 4087
    .local v4, "status":I
    new-instance v5, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v5}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 4088
    .local v5, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRttModifyRequestReceived status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4090
    if-ne v4, v2, :cond_4

    .line 4091
    iget-object v1, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4094
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "carrier_rtt_auto_upgrade"

    invoke-static {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v1

    .line 4095
    .local v1, "isRttAutoUpgradeSupported":Z
    if-eqz v1, :cond_3

    .line 4096
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyResponse(Z)V

    .line 4099
    .end local v1    # "isRttAutoUpgradeSupported":Z
    :cond_3
    goto :goto_0

    .line 4100
    :cond_4
    iget-object v3, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 4102
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyResponse(Z)V

    .line 4105
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4106
    return-void

    .line 4076
    .end local v4    # "status":I
    .end local v5    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    :cond_5
    :goto_1
    return-void

    .line 4070
    .end local v0    # "result":[I
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleRttModifyRequestReceived ar or mListener is null"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4072
    return-void
.end method

.method private handleRttModifyResponse(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 4022
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 4027
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 4028
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_4

    .line 4031
    :cond_1
    const/4 v1, 0x1

    aget v2, v0, v1

    .line 4032
    .local v2, "response":I
    const/4 v3, 0x0

    .line 4038
    .local v3, "status":I
    const/4 v4, 0x2

    if-nez v2, :cond_2

    .line 4039
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "handleRttModifyResponse success"

    invoke-static {v5, v6, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4040
    const/4 v3, 0x1

    goto :goto_0

    .line 4042
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRttModifyResponse fail status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4044
    const/4 v3, 0x3

    .line 4048
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "rtt_supported_bool"

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4049
    const/4 v4, -0x1

    .line 4050
    .local v4, "event":I
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "sendUp"

    goto :goto_1

    :cond_3
    const-string v5, "sendDown"

    .line 4051
    .local v5, "desc":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4052
    if-eq v3, v1, :cond_4

    const/16 v1, 0x234c

    goto :goto_2

    :cond_4
    const/16 v1, 0x234d

    .end local v4    # "event":I
    .local v1, "event":I
    :goto_2
    goto :goto_3

    .line 4054
    .end local v1    # "event":I
    .restart local v4    # "event":I
    :cond_5
    if-eq v3, v1, :cond_6

    const/16 v1, 0x234e

    goto :goto_3

    :cond_6
    const/16 v1, 0x234f

    .line 4056
    .end local v4    # "event":I
    .restart local v1    # "event":I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12700(Lcom/mediatek/ims/ImsCallSessionProxy;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12900(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4057
    .end local v5    # "desc":Ljava/lang/String;
    .local v4, "desc":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/nec/OplusNecManager;->getInstance(Landroid/content/Context;)Lcom/oplus/nec/OplusNecManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v6

    invoke-virtual {v5, v6, v1, v4}, Lcom/oplus/nec/OplusNecManager;->broadcastVolteCallKeylog(IILjava/lang/String;)V

    .line 4060
    .end local v1    # "event":I
    .end local v4    # "desc":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    .line 4061
    return-void

    .line 4029
    .end local v2    # "response":I
    .end local v3    # "status":I
    :cond_8
    :goto_4
    return-void

    .line 4023
    .end local v0    # "result":[I
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleRttModifyResponse ar or mListener is null"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4025
    return-void
.end method

.method private handleRttTextReceived(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3981
    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 3982
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleRttTextReceived ar is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3983
    return-void

    .line 3985
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 3986
    .local v1, "textReceived":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    aget-object v5, v1, v4

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 3990
    :cond_1
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3991
    .local v5, "targetCallid":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3992
    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto/16 :goto_2

    .line 3995
    :cond_2
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received call id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v2, v1, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " len = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v3

    .line 3996
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " textMessage = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v4

    .line 3997
    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " actual len = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v4

    .line 3998
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3995
    invoke-static {v6, v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4000
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 4006
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/RttTextEncoder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/RttTextEncoder;->getUnicodeFromUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4007
    .local v2, "decodeText":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 4013
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 4014
    return-void

    .line 4008
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleRttTextReceived: decodeText length is 0"

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4010
    return-void

    .line 4001
    .end local v2    # "decodeText":Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleRttTextReceived: length is 0"

    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4003
    return-void

    .line 3993
    :cond_7
    :goto_2
    return-void

    .line 3987
    .end local v5    # "targetCallid":I
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "textReceived is null"

    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3988
    return-void
.end method

.method private imsReasonInfoCodeFromRilReasonCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .line 1770
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReasonInfoCodeFromRilReasonCode() : causeCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1773
    const/16 v0, 0x1fe

    const/16 v1, 0x162

    const/16 v3, 0x154

    sparse-switch p1, :sswitch_data_0

    .line 1899
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getWfcDisconnectCause(I)I

    move-result v1

    .line 1900
    .local v1, "wfcReason":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 1901
    return v1

    .line 1891
    .end local v1    # "wfcReason":I
    :sswitch_0
    const/16 v0, 0x2afa

    return v0

    .line 1889
    :sswitch_1
    const/16 v0, 0x2af9

    return v0

    .line 1887
    :sswitch_2
    const/16 v0, 0x2af8

    return v0

    .line 1885
    :sswitch_3
    const/16 v0, 0x3f6

    return v0

    .line 1867
    :sswitch_4
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    const/16 v0, 0x5ea

    return v0

    .line 1870
    :cond_0
    const v0, 0xf001

    return v0

    .line 1880
    :sswitch_5
    const/16 v0, 0x16c

    return v0

    .line 1877
    :sswitch_6
    const/16 v0, 0x16b

    return v0

    .line 1795
    :sswitch_7
    const/16 v0, 0x5e8

    return v0

    .line 1874
    :sswitch_8
    const/16 v0, 0xf3

    return v0

    .line 1797
    :sswitch_9
    const/16 v0, 0xf1

    return v0

    .line 1793
    :sswitch_a
    const/16 v0, 0x66

    return v0

    .line 1859
    :sswitch_b
    const/16 v0, 0x14f

    return v0

    .line 1863
    :sswitch_c
    const/16 v0, 0x156

    return v0

    .line 1790
    :sswitch_d
    const/16 v0, 0x8d

    return v0

    .line 1800
    :sswitch_e
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1802
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/wfo/IWifiOffloadService;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1803
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "imsReasonInfoCodeFromRilReasonCode() : Rat is Wifi, Wifi is disconnected, ret=SIGNAL_LOST"

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    const v0, 0xf00b

    return v0

    .line 1808
    :cond_1
    goto :goto_0

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "imsReasonInfoCodeFromRilReasonCode() : RemoteException in isWifiConnected()"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1812
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v1

    .line 1846
    :sswitch_f
    const/16 v0, 0x14c

    return v0

    .line 1782
    :sswitch_10
    return v3

    .line 1779
    :sswitch_11
    const/16 v0, 0x150

    return v0

    .line 1842
    :sswitch_12
    const/16 v0, 0x160

    return v0

    .line 1787
    :sswitch_13
    const/16 v0, 0x15f

    return v0

    .line 1830
    :sswitch_14
    return v0

    .line 1818
    :sswitch_15
    return v1

    .line 1835
    :sswitch_16
    const/16 v0, 0x151

    return v0

    .line 1827
    :sswitch_17
    const/16 v0, 0x169

    return v0

    .line 1824
    :sswitch_18
    const/16 v0, 0x1f6

    return v0

    .line 1821
    :sswitch_19
    const/16 v0, 0xca

    return v0

    .line 1775
    :sswitch_1a
    const/16 v0, 0x152

    return v0

    .line 1856
    :sswitch_1b
    const/16 v0, 0x153

    return v0

    .line 1850
    :sswitch_1c
    return v3

    .line 1853
    :sswitch_1d
    const/16 v0, 0x14d

    return v0

    .line 1833
    :sswitch_1e
    const/16 v0, 0x5eb

    return v0

    .line 1904
    .restart local v1    # "wfcReason":I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v3

    .line 1906
    .local v3, "serviceState":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsReasonInfoCodeFromRilReasonCode() : serviceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1909
    const/4 v2, 0x3

    if-ne v3, v2, :cond_4

    .line 1910
    const/16 v0, 0x6f

    return v0

    .line 1911
    :cond_4
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1912
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1913
    const/16 v0, 0x6a

    return v0

    .line 1914
    :cond_5
    const/16 v2, 0x10

    if-ne p1, v2, :cond_6

    .line 1915
    return v0

    .line 1919
    :cond_6
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1e
        0x3 -> :sswitch_1d
        0x6 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_19
        0x13 -> :sswitch_18
        0x15 -> :sswitch_17
        0x1c -> :sswitch_16
        0x1d -> :sswitch_15
        0x1f -> :sswitch_14
        0x22 -> :sswitch_13
        0x26 -> :sswitch_12
        0x29 -> :sswitch_11
        0x2a -> :sswitch_12
        0x2b -> :sswitch_15
        0x2c -> :sswitch_11
        0x2f -> :sswitch_12
        0x31 -> :sswitch_10
        0x37 -> :sswitch_f
        0x39 -> :sswitch_f
        0x3a -> :sswitch_e
        0x3f -> :sswitch_12
        0x41 -> :sswitch_1c
        0x44 -> :sswitch_d
        0x45 -> :sswitch_13
        0x51 -> :sswitch_c
        0x58 -> :sswitch_12
        0x66 -> :sswitch_b
        0x6f -> :sswitch_13
        0x7f -> :sswitch_15
        0xf0 -> :sswitch_a
        0xf1 -> :sswitch_9
        0xf3 -> :sswitch_8
        0x104 -> :sswitch_7
        0x145 -> :sswitch_6
        0x146 -> :sswitch_5
        0x17c -> :sswitch_4
        0x834 -> :sswitch_3
        0x2af8 -> :sswitch_2
        0x2af9 -> :sswitch_1
        0x2afa -> :sswitch_0
    .end sparse-switch
.end method

.method private isAnonymousDisaplayName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayname"    # Ljava/lang/String;

    .line 3616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3617
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3616
    :goto_0
    return v0
.end method

.method private isCallModeUpdated(II)Z
    .locals 7
    .param p1, "callMode"    # I
    .param p2, "videoState"    # I

    .line 2120
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallModeUpdated() : callMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "videoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2121
    const/4 v0, 0x0

    .line 2122
    .local v0, "isChanged":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2124
    .local v1, "oldCallMode":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    if-eq v3, p2, :cond_0

    .line 2125
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2502(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2126
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2127
    const/4 v0, 0x1

    .line 2130
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2132
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v3, v1, :cond_1

    .line 2133
    const/4 v0, 0x1

    .line 2135
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2136
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    iget v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateProfile(I)V

    .line 2141
    :cond_1
    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2142
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    .line 2144
    .local v3, "supportUpgradeWhenVoiceConf":Z
    const/16 v4, 0x18

    const/16 v5, 0x16

    if-eq p1, v5, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    if-nez v3, :cond_3

    .line 2146
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 2149
    :cond_3
    const/16 v6, 0x14

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_4

    const/16 v4, 0x19

    if-ne p1, v4, :cond_5

    .line 2151
    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2152
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallModeUpdated() : Start setUIMode old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2153
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setUIMode(Lcom/mediatek/ims/internal/ImsVTProvider;I)V

    .line 2154
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallModeUpdated() : End setUIMode new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    iget v6, v6, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2158
    :cond_5
    return v0
.end method

.method private isInteractionDisaplayName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayname"    # Ljava/lang/String;

    .line 3634
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3635
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interaction with other service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3634
    :goto_0
    return v0
.end method

.method private isJapanOperator()Z
    .locals 2

    .line 3600
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP17:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP50:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3601
    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP129:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3602
    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP218:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3603
    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3600
    :goto_1
    return v0
.end method

.method private isKddiOperator()Z
    .locals 2

    .line 3610
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP129:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    return v0
.end method

.method private isPayphoneDisaplayName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayname"    # Ljava/lang/String;

    .line 3622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3623
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Coin line/payphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3622
    :goto_0
    return v0
.end method

.method private isUnavailableDisaplayName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayname"    # Ljava/lang/String;

    .line 3628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3629
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3628
    :goto_0
    return v0
.end method

.method private isValidCNAP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "cnapName"    # Ljava/lang/String;

    .line 3750
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3751
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 3753
    :cond_0
    return v1
.end method

.method private notifyMultipartyStateChanged(I)V
    .locals 5
    .param p1, "callMode"    # I

    .line 3577
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    move-result v0

    .line 3578
    .local v0, "stateChanged":Z
    if-nez v0, :cond_0

    .line 3579
    return-void

    .line 3582
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultipartyStateChanged() : isMultiparty(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3583
    invoke-virtual {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3582
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3586
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3588
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3592
    goto :goto_0

    .line 3589
    :catch_0
    move-exception v1

    .line 3590
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionMultipartyStateChanged()"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3594
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method private retrieveMergeFail()V
    .locals 9

    .line 2162
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->setOngoingMergeCallIds([Ljava/lang/String;)V

    .line 2169
    const/4 v0, 0x0

    .line 2170
    .local v0, "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v1, 0x0

    .line 2171
    .local v1, "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v2, 0x0

    .line 2172
    .local v2, "isNotifyMergeFail":Z
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2174
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2176
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "retrieveMergeFail()"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2177
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2178
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 2181
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2182
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v1

    .line 2185
    :cond_2
    const/16 v3, 0xd3

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 2187
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrieveMergeFail() : MergeCallInfo: callId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " call status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " MergedCallInfo: callId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2191
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_3

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_3

    .line 2194
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2196
    :cond_3
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_4

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_4

    .line 2200
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : two active call and hold merged call"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2202
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2203
    .local v3, "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 2205
    .end local v3    # "result":Landroid/os/Message;
    goto/16 :goto_0

    :cond_4
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_5

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_5

    .line 2209
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : two hold call and resume merge call"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2211
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2212
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 2213
    .end local v3    # "result":Landroid/os/Message;
    goto/16 :goto_0

    .line 2214
    :cond_5
    iget-boolean v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    if-eqz v4, :cond_6

    .line 2216
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : swap back as active call and holdconference call are swapped before merge"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2218
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2219
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->swap(Landroid/os/Message;)V

    .line 2220
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 2222
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 2225
    :cond_7
    if-eqz v0, :cond_8

    if-nez v1, :cond_d

    .line 2228
    :cond_8
    if-eqz v0, :cond_a

    .line 2230
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : only merge call is left"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2232
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_9

    .line 2233
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2234
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 2235
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 2236
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 2239
    :cond_a
    if-eqz v1, :cond_c

    .line 2241
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : only merged call is left"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2243
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_b

    .line 2244
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2245
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 2246
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 2247
    :cond_b
    const/4 v2, 0x1

    goto :goto_0

    .line 2253
    :cond_c
    const/4 v2, 0x1

    .line 2257
    :cond_d
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 2258
    iput-boolean v3, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 2261
    :cond_e
    if-eqz v1, :cond_f

    .line 2262
    iput-boolean v3, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 2265
    :cond_f
    if-eqz v2, :cond_10

    .line 2266
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2267
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2269
    :cond_10
    return-void

    .line 2163
    .end local v0    # "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v1    # "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v2    # "isNotifyMergeFail":Z
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieveMergeFail() : Shouldn\'t retrieve merge fail, mIsMerging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2164
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsRetrievingMergeFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2163
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2166
    return-void
.end method

.method private updateAddressFromPau(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pau"    # Ljava/lang/String;

    .line 3697
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 3698
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "updateAddressFromPau() : MO call, should not update addr by PAU"

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3700
    return v1

    .line 3703
    :cond_0
    const/4 v0, 0x0

    .line 3705
    .local v0, "changed":Z
    const-string v3, "<sip:"

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3706
    .local v3, "sipField":Ljava/lang/String;
    const-string v4, "<tel:"

    invoke-direct {p0, p1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3708
    .local v4, "telField":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAddressFromPau() : updatePau()... telNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3709
    invoke-static {v7, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sipNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3708
    invoke-static {v5, v6, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3713
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3714
    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 3715
    .local v5, "addr":Ljava/lang/String;
    :goto_0
    const-string v6, "[;@,]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3716
    .local v6, "split":[Ljava/lang/String;
    aget-object v1, v6, v1

    .line 3718
    .end local v5    # "addr":Ljava/lang/String;
    .local v1, "addr":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    const-string v7, "oi"

    invoke-virtual {v5, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3719
    .local v5, "currentOI":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3720
    invoke-static {v5, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3721
    const/4 v0, 0x1

    .line 3722
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAddressFromPau() : updatePau()... addr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3724
    invoke-static {v9, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3723
    invoke-static {v7, v8, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3727
    :cond_2
    return v0
.end method

.method private updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "pau"    # Ljava/lang/String;

    .line 3846
    const/4 v0, 0x0

    .line 3848
    .local v0, "changed":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3849
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "oi"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3851
    .local v1, "curOI":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3853
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallDisplayFromNumberOrPau() : number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3854
    invoke-static {v5, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3853
    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3856
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3857
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "remote_uri"

    invoke-virtual {v2, v3, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3858
    const/4 v0, 0x1

    .line 3860
    :cond_0
    return v0

    .line 3863
    .end local v1    # "curOI":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handlePauUpdate(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private updateDisplayNameFromPau(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pau"    # Ljava/lang/String;

    .line 3758
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 3759
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "updateDisplayNameFromPau() : MO call, should not update display-name by PAU"

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3761
    const/4 v0, 0x0

    return v0

    .line 3764
    :cond_0
    const/4 v0, 0x0

    .line 3765
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3766
    .local v2, "displayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    const-string v4, "cna"

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3767
    .local v3, "currentDisplayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3768
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    const-string v6, "cnap"

    invoke-virtual {v5, v6, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3771
    invoke-static {v3, v2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3774
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isAllowCNAP(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3775
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3782
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3783
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isKddiOperator()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3786
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3787
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v6, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3790
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDisplayNameFromPau() : diaplayName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3792
    const/4 v0, 0x1

    goto :goto_0

    .line 3796
    :cond_4
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "nothing happen at CNAP"

    invoke-static {v4, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3802
    :cond_5
    :goto_0
    return v0
.end method

.method private updateImsReasonInfo(Landroid/os/AsyncResult;)V
    .locals 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1926
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 1927
    .local v0, "sipMessage":[Ljava/lang/String;
    if-eqz v0, :cond_d

    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    aget-object v3, v0, v2

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1928
    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 1931
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImsReasonInfo() : receive sip method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason header = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 1934
    new-instance v4, Lcom/mediatek/ims/SipMessage;

    invoke-direct {v4, v0}, Lcom/mediatek/ims/SipMessage;-><init>([Ljava/lang/String;)V

    .line 1936
    .local v4, "msg":Lcom/mediatek/ims/SipMessage;
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateRestrictHDForRemoteCallProfile(ILjava/lang/String;)V

    .line 1939
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->getImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1940
    .local v5, "opReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    if-nez v5, :cond_1

    .line 1941
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1943
    :cond_1
    if-eqz v5, :cond_2

    .line 1944
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 1945
    return-void

    .line 1949
    :cond_2
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v6

    const/16 v7, 0x57c

    const/16 v8, 0x3f6

    const-string v9, "mCachedCauseText="

    const-string v10, "ImsCallSessionProxy"

    const/4 v11, 0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    .line 1994
    :sswitch_0
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1995
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "declined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1997
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1999
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1997
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1971
    :sswitch_1
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 1972
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 1974
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1975
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Emergency calls over WiFi not allowed in this location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1977
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1979
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x656

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1977
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 2078
    :sswitch_2
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2079
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2080
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2081
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x152

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2080
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 2082
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v1, :cond_c

    .line 2083
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, v1, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionBusy()V

    goto/16 :goto_0

    .line 1952
    :sswitch_3
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 1953
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 1955
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Simultaneous Call Limit Has Already Been Reached"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1956
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1958
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x57b

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1956
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1959
    :cond_3
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1960
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service not allowed in this location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1962
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1964
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x657

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1962
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1985
    :sswitch_4
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1986
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call completed elsewhere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1988
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1990
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v8, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1988
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 2061
    :sswitch_5
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v1

    if-ne v1, v11, :cond_4

    .line 2063
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP08:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2064
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2068
    :cond_4
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2069
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2070
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2072
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2090
    :sswitch_6
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2091
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2092
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2094
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2003
    :sswitch_7
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v6

    if-ne v6, v2, :cond_5

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2004
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2005
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2007
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2005
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 2008
    :cond_5
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v6

    if-ne v6, v2, :cond_6

    .line 2009
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2010
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2011
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2013
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v8, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2011
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 2014
    :cond_6
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    const/4 v6, 0x7

    if-ne v2, v6, :cond_7

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2016
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Call Has Been Pulled by Another Device"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2017
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2019
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3f8

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2017
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 2020
    :cond_7
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v2

    if-nez v2, :cond_9

    .line 2022
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v11, :cond_9

    .line 2023
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2024
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Video call is currently not available"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2026
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Video calling is unavailable"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2028
    :cond_8
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImsReasonInfo() : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v1, v2, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2031
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2033
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2031
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 2034
    :cond_9
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v6, :cond_b

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v2

    if-nez v2, :cond_b

    .line 2036
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2037
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, "rtp-rtcp timeout"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2039
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2040
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2000(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2100(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 2041
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2043
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const v7, 0xf002

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2041
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 2045
    :cond_a
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 2047
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    const v7, 0xf003

    invoke-direct {v2, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2045
    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 2050
    :cond_b
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 2051
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v1

    if-ne v1, v11, :cond_c

    .line 2052
    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v1

    if-nez v1, :cond_c

    .line 2055
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v4}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_c
    :goto_0
    return-void

    .line 1929
    .end local v4    # "msg":Lcom/mediatek/ims/SipMessage;
    .end local v5    # "opReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_d
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xb4 -> :sswitch_6
        0xb7 -> :sswitch_5
        0xc8 -> :sswitch_4
        0x193 -> :sswitch_3
        0x1e6 -> :sswitch_2
        0x1f7 -> :sswitch_1
        0x25b -> :sswitch_0
    .end sparse-switch
.end method

.method private updateMultipartyState(I)Z
    .locals 7
    .param p1, "callMode"    # I

    .line 3543
    const/16 v0, 0x19

    const/16 v1, 0x18

    const/16 v2, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x16

    if-eq p1, v5, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v3

    .line 3549
    .local v6, "isMultipartyMode":Z
    :goto_1
    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    .line 3550
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getMultipartyModeForConfPart()Z

    move-result v6

    .line 3554
    :cond_3
    if-eq p1, v5, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_2

    .line 3557
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto :goto_3

    .line 3555
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3560
    :goto_3
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3562
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "VzW: set conference no constrain for HD icon"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iput v4, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 3566
    :cond_6
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    .line 3567
    .local v0, "mptyState":Z
    const-string v1, "mpty"

    .line 3569
    .local v1, "mptyExtra":Ljava/lang/String;
    if-ne v0, v6, :cond_7

    .line 3570
    return v4

    .line 3572
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    if-eqz v6, :cond_8

    move v4, v3

    :cond_8
    invoke-virtual {v2, v1, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3573
    return v3
.end method

.method private updateOIR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "pau"    # Ljava/lang/String;

    .line 3640
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3641
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "updateOIR() : ignore update OIR for mpty call: "

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3642
    return-void

    .line 3645
    :cond_0
    const/4 v0, 0x2

    .line 3646
    .local v0, "oir":I
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3648
    .local v2, "displayName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOIR() : pau: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], displayName: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3649
    invoke-static {v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3648
    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3653
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3654
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR() : nothing"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3655
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3656
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3657
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "coin line/payphone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3658
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR() : payhone"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3659
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 3660
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP50:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3661
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP129:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3662
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP218:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3663
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3664
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unavailable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3665
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "interaction with other service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3666
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 3667
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "anonymous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3668
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR() : anoymous"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3669
    const/4 v0, 0x1

    goto :goto_0

    .line 3670
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3671
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    .line 3670
    invoke-static {v3, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3672
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR() : AT&T"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3673
    const/4 v0, 0x1

    .line 3676
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isJapanOperator()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3677
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isAnonymousDisaplayName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3678
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR(): JP ImsCallProfile.OIR_PRESENTATION_RESTRICTED, anonymous"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3679
    const/4 v0, 0x1

    goto :goto_1

    .line 3680
    :cond_8
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isPayphoneDisaplayName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3681
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR(): JP ImsCallProfile.OIR_PRESENTATION_PAYPHONE, payhone"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3682
    const/4 v0, 0x4

    goto :goto_1

    .line 3683
    :cond_9
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isUnavailableDisaplayName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3684
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR(): JP ImsCallProfile.OIR_PRESENTATION_UNKNOWN, unavailable"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3685
    const/4 v0, 0x3

    goto :goto_1

    .line 3686
    :cond_a
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isInteractionDisaplayName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3687
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "updateOIR(): JP ImsCallProfile.OIR_PRESENTATION_UNKNOWN, interaction with other service"

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3688
    const/4 v0, 0x3

    .line 3693
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v3, "oir"

    invoke-virtual {v1, v3, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3694
    return-void
.end method

.method private updateRestrictHDForRemoteCallProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "sipCode"    # I
    .param p2, "reasonHeader"    # Ljava/lang/String;

    .line 2104
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2105
    return-void

    .line 2108
    :cond_0
    const-string v0, "updateRestrictHDForRemoteCallProfile: check for op12"

    const-string v1, "ImsCallSessionProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    .line 2110
    return-void

    .line 2112
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<call_w_mmtel_icsi_tag>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2113
    const-string v0, "updateRestrictHDForRemoteCallProfile"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 2115
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2117
    :cond_2
    return-void
.end method

.method private updateVerstatFromPau(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pau"    # Ljava/lang/String;

    .line 3819
    const/4 v0, 0x0

    .line 3820
    .local v0, "changed":Z
    const-string v1, "verstat="

    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3822
    .local v1, "verstatField":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3823
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVerstatFromPau() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3825
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v2

    .line 3826
    .local v2, "currentVerstat":I
    const-string v3, "[;@,]+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3827
    .local v3, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v3, v5

    .line 3828
    .local v6, "value":Ljava/lang/String;
    const-string v7, "TN-Validation-Passed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "verstat"

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    .line 3830
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 3832
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3833
    const/4 v0, 0x1

    goto :goto_0

    .line 3834
    :cond_0
    const-string v7, "TN-Validation-Failed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eq v2, v4, :cond_1

    .line 3836
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 3838
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v8, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3839
    const/4 v0, 0x1

    .line 3842
    .end local v2    # "currentVerstat":I
    .end local v3    # "split":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 2274
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v3, 0xff

    .line 2276
    .local v3, "callMode":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage() : receive message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget v6, v2, Landroid/os/Message;->what:I

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 2278
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v4

    .line 2279
    .local v4, "confHdler":Lcom/mediatek/ims/DefaultConferenceHandler;
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v5, 0x19

    const/16 v6, 0xce

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 3230
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleMessage() : unknown messahe, ignore"

    const/4 v5, 0x2

    invoke-static {v0, v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    goto/16 :goto_27

    .line 3218
    :sswitch_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9900(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3219
    goto/16 :goto_27

    .line 3227
    :sswitch_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10200(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3228
    goto/16 :goto_27

    .line 3224
    :sswitch_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10100(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3225
    goto/16 :goto_27

    .line 3221
    :sswitch_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10000(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3222
    goto/16 :goto_27

    .line 3215
    :sswitch_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9800(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3216
    goto/16 :goto_27

    .line 3212
    :sswitch_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9700(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3213
    goto/16 :goto_27

    .line 3209
    :sswitch_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9600(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3210
    goto/16 :goto_27

    .line 3181
    :sswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 3182
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 3183
    .local v6, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v0, v8, :cond_0

    .line 3184
    goto/16 :goto_27

    .line 3186
    :cond_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "handleMessage() : EVENT_ON_SUPP_SERVICE_NOTIFICATION, notify"

    invoke-static {v0, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3188
    new-instance v0, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v14, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v15, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    iget v8, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget v9, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    iget-object v10, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object v13, v0

    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v19}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    move-object v8, v0

    .line 3191
    .local v8, "imsNotification":Landroid/telephony/ims/ImsSuppServiceNotification;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3192
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3193
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;

    invoke-direct {v10, v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3202
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9502(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 3204
    :cond_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9502(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 3206
    :goto_0
    monitor-exit v9

    .line 3207
    goto/16 :goto_27

    .line 3206
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3161
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    .end local v8    # "imsNotification":Landroid/telephony/ims/ImsSuppServiceNotification;
    :sswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttAudioIndication(Landroid/os/AsyncResult;)V

    .line 3162
    goto/16 :goto_27

    .line 3178
    :sswitch_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9300(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 3179
    goto/16 :goto_27

    .line 3164
    :sswitch_a
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3165
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 3166
    .local v0, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_3

    .line 3169
    :cond_2
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9200(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 3171
    :cond_3
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "skip speech not active or alerting"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3173
    .end local v0    # "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :goto_1
    goto/16 :goto_27

    .line 3174
    :cond_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "skip speech codec update when mCallId null"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3176
    goto/16 :goto_27

    .line 3158
    :sswitch_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttModifyRequestReceived(Landroid/os/AsyncResult;)V

    .line 3159
    goto/16 :goto_27

    .line 3155
    :sswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttModifyResponse(Landroid/os/AsyncResult;)V

    .line 3156
    goto/16 :goto_27

    .line 3152
    :sswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttTextReceived(Landroid/os/AsyncResult;)V

    .line 3153
    goto/16 :goto_27

    .line 3131
    :sswitch_e
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3132
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3133
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleMessage() : EVENT_RADIO_NOT_AVAILABLE, ignore"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3134
    goto/16 :goto_27

    .line 3136
    :cond_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3137
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3138
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9102(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_2

    .line 3140
    :cond_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9102(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 3142
    :goto_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x6a

    invoke-direct {v5, v6, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3144
    goto/16 :goto_27

    .line 3115
    :sswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEctResult(Landroid/os/AsyncResult;)V

    .line 3116
    goto/16 :goto_27

    .line 3110
    :sswitch_10
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 3111
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_27

    .line 3078
    :sswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3079
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_65

    .line 3080
    iget v5, v2, Landroid/os/Message;->arg1:I

    if-ne v5, v10, :cond_9

    .line 3081
    if-eqz v0, :cond_8

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    .line 3082
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3083
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 3085
    .local v5, "reason":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_7

    .line 3086
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 3087
    .local v6, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3089
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_7

    .line 3090
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0xf1

    invoke-direct {v7, v8, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v5, v7

    .line 3094
    .end local v6    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_7
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3095
    .end local v5    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_27

    .line 3096
    :cond_8
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiated"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3097
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3098
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionTerminated"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3099
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_27

    .line 3102
    :cond_9
    if-eqz v0, :cond_65

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_65

    .line 3103
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3104
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_27

    .line 3061
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3064
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 3065
    .local v0, "dtmfMessenger":Landroid/os/Messenger;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dtmfMessenger "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3066
    if-eqz v0, :cond_a

    .line 3067
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8900(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3072
    .end local v0    # "dtmfMessenger":Landroid/os/Messenger;
    :cond_a
    goto :goto_3

    .line 3069
    :catch_0
    move-exception v0

    .line 3071
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "handleMessage() : RemoteException for DTMF"

    invoke-static {v5, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3074
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b
    :goto_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8902(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;

    .line 3075
    goto/16 :goto_27

    .line 2833
    :sswitch_13
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2834
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2838
    :cond_c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2839
    goto/16 :goto_27

    .line 2796
    :sswitch_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2798
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_d

    goto :goto_4

    :cond_d
    move v10, v11

    :goto_4
    const-string v7, "handleMessage() : receive EVENT_SWAP_BEFORE_MERGE_RESULT"

    invoke-static {v5, v10, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2800
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_e

    .line 2801
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_27

    .line 2804
    :cond_e
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    .line 2805
    .local v5, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v5, :cond_f

    .line 2806
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "can\'t find this call callInfo"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2807
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2808
    goto/16 :goto_27

    .line 2811
    :cond_f
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v7

    .line 2812
    .local v7, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v7, :cond_10

    .line 2813
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "can\'t find this another call callInfo"

    invoke-static {v6, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2814
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2815
    goto/16 :goto_27

    .line 2817
    :cond_10
    iget-boolean v8, v5, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v8, :cond_11

    .line 2818
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v9, "handleMessage() : myCallI is conference, merge normal call"

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2819
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2820
    .local v6, "result":Landroid/os/Message;
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9, v7, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_5

    .line 2823
    .end local v6    # "result":Landroid/os/Message;
    :cond_11
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v9, "handleMessage() : bg conference is foreground now, merge normal call"

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2824
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2825
    .restart local v6    # "result":Landroid/os/Message;
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    iget-object v9, v7, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 2826
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2825
    invoke-interface {v8, v9, v5, v6}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    .line 2831
    .end local v5    # "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v6    # "result":Landroid/os/Message;
    .end local v7    # "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :goto_5
    goto/16 :goto_27

    .line 2964
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateImsReasonInfo(Landroid/os/AsyncResult;)V

    .line 2965
    goto/16 :goto_27

    .line 2884
    :sswitch_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2886
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_12

    move v6, v10

    goto :goto_6

    :cond_12
    move v6, v11

    :goto_6
    const-string v8, "receive EVENT_REMOVE_CONFERENCE_RESULT"

    invoke-static {v0, v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2889
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-ne v0, v10, :cond_13

    .line 2890
    goto/16 :goto_27

    .line 2893
    :cond_13
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v6, 0xcf

    if-nez v0, :cond_14

    .line 2894
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2895
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    .line 2896
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8102(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 2898
    :cond_14
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2899
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2900
    .local v0, "result":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2901
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8102(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2902
    goto/16 :goto_27

    .line 2904
    .end local v0    # "result":Landroid/os/Message;
    :cond_15
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2908
    :goto_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7808(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 2909
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    if-ge v0, v7, :cond_16

    .line 2910
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2912
    .restart local v0    # "result":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2913
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    aget-object v8, v8, v9

    .line 2912
    invoke-interface {v6, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2914
    .end local v0    # "result":Landroid/os/Message;
    goto/16 :goto_27

    .line 2915
    :cond_16
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2917
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2918
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_8

    .line 2920
    :cond_17
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2924
    :goto_8
    goto :goto_9

    .line 2922
    :catch_1
    move-exception v0

    .line 2923
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionRemoveParticipantsRequest"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2926
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_18
    :goto_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2928
    goto/16 :goto_27

    .line 2841
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2843
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2844
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_65

    .line 2845
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_27

    .line 2848
    :cond_19
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-ne v0, v10, :cond_1a

    .line 2849
    goto/16 :goto_27

    .line 2852
    :cond_1a
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    .line 2853
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2854
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    goto :goto_a

    .line 2856
    :cond_1b
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2858
    :goto_a
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7808(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 2860
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    if-ge v0, v7, :cond_1c

    .line 2861
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2862
    .local v0, "result":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2863
    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    aget-object v7, v7, v8

    .line 2862
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 2864
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2865
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    aget-object v8, v8, v9

    .line 2864
    invoke-interface {v6, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2867
    .end local v0    # "result":Landroid/os/Message;
    goto/16 :goto_27

    .line 2868
    :cond_1c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2870
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2871
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_b

    .line 2873
    :cond_1d
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2877
    :goto_b
    goto :goto_c

    .line 2875
    :catch_2
    move-exception v0

    .line 2876
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionInviteParticipantsRequest"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2879
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1e
    :goto_c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2882
    goto/16 :goto_27

    .line 2782
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_18
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2784
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1f

    goto :goto_d

    :cond_1f
    move v10, v11

    :goto_d
    const-string v6, "handleMessage() : receive EVENT_MERGE_RESULT"

    invoke-static {v5, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2786
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_65

    .line 2787
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_65

    .line 2789
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "handleMessage() : ConfCreated failed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2791
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_27

    .line 2767
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2769
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_20

    goto :goto_e

    :cond_20
    move v10, v11

    :goto_e
    const-string v6, "handleMessage() : receive EVENT_RESUME_RESULT"

    invoke-static {v0, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2771
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 2772
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_65

    .line 2774
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    .line 2775
    :catch_3
    move-exception v0

    .line 2776
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionResumeFailed()"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2777
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_f
    goto/16 :goto_27

    .line 2740
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2742
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_21

    goto :goto_10

    :cond_21
    move v10, v11

    :goto_10
    const-string v6, "handleMessage() : receive EVENT_HOLD_RESULT"

    invoke-static {v0, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2745
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 2746
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_65

    .line 2747
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    move-object v6, v0

    .line 2748
    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_22

    .line 2749
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 2750
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v7, :cond_22

    .line 2751
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x94

    invoke-direct {v7, v8, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v6, v7

    .line 2753
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "Call hold failed by call terminated"

    invoke-static {v7, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2755
    goto/16 :goto_27

    .line 2759
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_22
    :try_start_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2762
    goto :goto_11

    .line 2760
    :catch_4
    move-exception v0

    .line 2761
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "RuntimeException callSessionHoldFailed()"

    invoke-static {v7, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2763
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_11
    goto/16 :goto_27

    .line 2737
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleDialResult(Landroid/os/AsyncResult;)V

    .line 2738
    goto/16 :goto_27

    .line 3146
    :sswitch_1c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleImsConferenceIndication(Landroid/os/AsyncResult;)V

    .line 3147
    goto/16 :goto_27

    .line 3149
    :sswitch_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttCapabilityIndication(Landroid/os/AsyncResult;)V

    .line 3150
    goto/16 :goto_27

    .line 3123
    :sswitch_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v0

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3124
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v6, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v6

    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 3123
    invoke-interface {v0, v5, v6, v7}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleDeviceSwitchResult(Ljava/lang/String;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3125
    goto/16 :goto_27

    .line 3128
    :cond_23
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEctIndication(Landroid/os/AsyncResult;)V

    .line 3129
    goto/16 :goto_27

    .line 3010
    :sswitch_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3011
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    .line 3013
    .local v5, "videoCapabilityInfo":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3014
    .local v6, "lVideoCapability":I
    const/4 v7, 0x0

    .line 3015
    .local v7, "rVideoCapability":I
    if-eqz v5, :cond_65

    aget-object v9, v5, v11

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3016
    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 3017
    aget-object v9, v5, v10

    if-eqz v9, :cond_25

    aget-object v9, v5, v10

    const-string v11, ""

    .line 3018
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 3019
    aget-object v9, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3020
    if-ne v6, v10, :cond_24

    .line 3021
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v8, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_12

    .line 3023
    :cond_24
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v12, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3027
    :cond_25
    :goto_12
    aget-object v9, v5, v12

    if-eqz v9, :cond_27

    aget-object v9, v5, v12

    const-string v11, ""

    .line 3028
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 3029
    aget-object v9, v5, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3030
    if-ne v7, v10, :cond_26

    .line 3031
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v8, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_13

    .line 3033
    :cond_26
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    iput v12, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 3037
    :cond_27
    :goto_13
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3040
    sget-object v8, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3041
    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v8

    .line 3043
    .local v8, "supportUpgradeWhenVoiceConf":Z
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v9

    if-eqz v9, :cond_28

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8600(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v9

    if-nez v9, :cond_28

    if-nez v8, :cond_28

    .line 3045
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    .line 3048
    :cond_28
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8702(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3049
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8802(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 3051
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    .line 3054
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage() : local video capability = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", remote video capability = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3057
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3058
    .end local v8    # "supportUpgradeWhenVoiceConf":Z
    goto/16 :goto_27

    .line 2967
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "videoCapabilityInfo":[Ljava/lang/String;
    .end local v6    # "lVideoCapability":I
    .end local v7    # "rVideoCapability":I
    :sswitch_20
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2968
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    .line 2973
    .local v6, "callModeInfo":[Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallModeChangeIndication([Ljava/lang/String;)V

    .line 2975
    if-eqz v6, :cond_65

    aget-object v7, v6, v11

    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 2977
    const/4 v7, 0x3

    .line 2978
    .local v7, "videoState":I
    aget-object v13, v6, v10

    if-eqz v13, :cond_29

    aget-object v13, v6, v10

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    .line 2979
    aget-object v13, v6, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2981
    :cond_29
    aget-object v13, v6, v12

    if-eqz v13, :cond_2a

    aget-object v13, v6, v12

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2a

    .line 2982
    aget-object v13, v6, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2986
    :cond_2a
    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage() : mode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", video state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2989
    invoke-direct {v1, v3, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isCallModeUpdated(II)Z

    move-result v12

    .line 2990
    .local v12, "isCallModeChanged":Z
    array-length v13, v6

    if-lt v13, v9, :cond_2b

    aget-object v8, v6, v8

    .line 2991
    invoke-direct {v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handlePauUpdate(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v8, v10

    goto :goto_14

    :cond_2b
    move v8, v11

    .line 2993
    .local v8, "isCallDisplayUpdated":Z
    :goto_14
    if-ne v3, v5, :cond_2c

    goto :goto_15

    :cond_2c
    move v10, v11

    :goto_15
    move v5, v10

    .line 2994
    .local v5, "shouldUpdateExtras":Z
    if-eqz v5, :cond_2d

    .line 2995
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    const-string v11, "video_provider_id"

    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage() : setCallIDAsExtras video_provider_id = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2999
    :cond_2d
    if-nez v12, :cond_2e

    if-nez v8, :cond_2e

    if-eqz v5, :cond_2f

    .line 3000
    :cond_2e
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3001
    if-eqz v12, :cond_2f

    .line 3003
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 3006
    :cond_2f
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->notifyMultipartyStateChanged(I)V

    .line 3007
    .end local v5    # "shouldUpdateExtras":Z
    .end local v7    # "videoState":I
    .end local v12    # "isCallModeChanged":Z
    goto/16 :goto_27

    .line 2930
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "callModeInfo":[Ljava/lang/String;
    .end local v8    # "isCallDisplayUpdated":Z
    :sswitch_21
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2932
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x0

    .line 2934
    .local v5, "sipCauseCode":I
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_30

    .line 2935
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_16

    .line 2937
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_30
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v6

    if-eqz v6, :cond_31

    .line 2938
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : notify disconnect cause by mLocalTerminateReason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2939
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2938
    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2940
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    invoke-direct {v6, v7, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .restart local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_16

    .line 2949
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_31
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    if-nez v6, :cond_32

    .line 2950
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "handleMessage() : get disconnect cause from +CEER"

    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2952
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/LastCallFailCause;

    .line 2953
    .local v6, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v7, v6, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    invoke-direct {v1, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->imsReasonInfoCodeFromRilReasonCode(I)I

    move-result v5

    .line 2954
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7, v5, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v6, v7

    .line 2955
    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_16

    .line 2956
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_32
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "handleMessage() : get disconnect cause directly from +ESIPCPI"

    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2957
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 2961
    .restart local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_16
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8300(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2962
    goto/16 :goto_27

    .line 2731
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "sipCauseCode":I
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :sswitch_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2732
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEconfIndication([Ljava/lang/String;)V

    .line 2733
    goto/16 :goto_27

    .line 2305
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_23
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 2306
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    .line 2307
    .local v13, "callInfo":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2308
    .local v0, "msgType":I
    const/4 v14, 0x0

    .line 2309
    .local v14, "isCallProfileUpdated":Z
    const/4 v15, 0x0

    .line 2310
    .local v15, "causeNum":I
    aget-object v16, v13, v10

    if-eqz v16, :cond_33

    aget-object v7, v13, v10

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 2311
    aget-object v5, v13, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_17

    .line 2314
    :cond_33
    move v5, v0

    .end local v0    # "msgType":I
    .local v5, "msgType":I
    :goto_17
    aget-object v0, v13, v9

    if-eqz v0, :cond_34

    aget-object v0, v13, v9

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2315
    aget-object v0, v13, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2319
    :cond_34
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    aget-object v7, v13, v11

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2323
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 2324
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_CALL_INFO_INDICATION : mIsWaitingClose is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2325
    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", count: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2324
    invoke-static {v0, v7, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2327
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ge v0, v9, :cond_35

    .line 2328
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4008(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    goto/16 :goto_27

    .line 2330
    :cond_35
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2332
    goto/16 :goto_27

    .line 2335
    :cond_36
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v13, v7, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2338
    :cond_37
    const/4 v0, 0x0

    .line 2339
    .local v0, "isCallDisplayUpdated":Z
    const/4 v7, 0x0

    .line 2341
    .local v7, "isVideoCapUpdated":Z
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_3e

    aget-object v10, v13, v11

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 2342
    packed-switch v5, :pswitch_data_0

    .line 2401
    goto/16 :goto_27

    .line 2344
    :pswitch_0
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage() : conference assign call id = "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v13, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2346
    new-instance v8, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v8}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 2348
    .local v8, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const/4 v9, 0x5

    aget-object v10, v13, v9

    if-eqz v10, :cond_38

    aget-object v10, v13, v9

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_38

    .line 2349
    aget-object v9, v13, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2352
    :cond_38
    const/16 v9, 0x15

    if-eq v3, v9, :cond_3a

    const/16 v9, 0x17

    if-eq v3, v9, :cond_3a

    const/16 v9, 0x19

    if-ne v3, v9, :cond_39

    goto :goto_18

    .line 2356
    :cond_39
    iput v12, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_19

    .line 2354
    :cond_3a
    :goto_18
    const/4 v9, 0x4

    iput v9, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2359
    :goto_19
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2361
    const/4 v9, 0x6

    aget-object v10, v13, v9

    if-eqz v10, :cond_3b

    aget-object v10, v13, v9

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 2363
    const-string v10, "oi"

    aget-object v11, v13, v9

    invoke-virtual {v8, v10, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    const-string v10, "remote_uri"

    aget-object v9, v13, v9

    invoke-virtual {v8, v10, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    const-string v9, "oir"

    invoke-virtual {v8, v9, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1a

    .line 2374
    :cond_3b
    const-string v9, "oir"

    invoke-virtual {v8, v9, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2378
    :goto_1a
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    const-string v10, "CallRadioTech"

    invoke-virtual {v9, v10}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2380
    .local v9, "radioTech":Ljava/lang/String;
    const-string v10, "CallRadioTech"

    invoke-virtual {v8, v10, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x0

    aget-object v12, v13, v11

    invoke-static {v10, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 2385
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v10

    if-eqz v10, :cond_3c

    .line 2386
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v11

    invoke-virtual {v10, v13, v11, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1b

    .line 2387
    :cond_3c
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v10

    if-eqz v10, :cond_3d

    .line 2388
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v11

    invoke-virtual {v10, v13, v11, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1b

    .line 2390
    :cond_3d
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "handleMessage() : conference not create callSession"

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2394
    :goto_1b
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_65

    .line 2395
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4502(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2396
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_27

    .line 2403
    .end local v8    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v9    # "radioTech":Ljava/lang/String;
    :cond_3e
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    if-eqz v8, :cond_5e

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    aget-object v12, v13, v11

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 2404
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_CALL_INFO_INDICATION: msgType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mCallNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2405
    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2404
    invoke-static {v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 2407
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v8

    if-nez v8, :cond_3f

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 2408
    :cond_3f
    const/4 v8, 0x6

    aget-object v10, v13, v8

    if-eqz v10, :cond_40

    aget-object v10, v13, v8

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    .line 2409
    aget-object v10, v13, v8

    const-string v8, "*31#"

    const-string v11, ""

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "#31#"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2410
    .local v8, "ecpiCallNumber":Ljava/lang/String;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    .line 2411
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2415
    .end local v8    # "ecpiCallNumber":Ljava/lang/String;
    :cond_40
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2416
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    aget-object v10, v13, v9

    invoke-direct {v1, v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 2417
    .end local v0    # "isCallDisplayUpdated":Z
    .local v8, "isCallDisplayUpdated":Z
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    aget-object v9, v13, v9

    invoke-direct {v1, v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateOIR(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v9

    .line 2419
    .local v9, "serviceId":I
    const/4 v0, 0x7

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_25

    .line 2681
    :sswitch_24
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttECCRedialEvent()V

    goto/16 :goto_25

    .line 2672
    :sswitch_25
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2673
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2674
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    .line 2675
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7000(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2676
    if-nez v8, :cond_41

    if-eqz v7, :cond_5d

    .line 2677
    :cond_41
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_25

    .line 2662
    :sswitch_26
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2663
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2664
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    .line 2665
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2666
    if-nez v8, :cond_42

    if-eqz v7, :cond_5d

    .line 2667
    :cond_42
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_25

    .line 2642
    :sswitch_27
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2644
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2645
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    sget-object v10, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    const/4 v11, 0x1

    goto :goto_1c

    :cond_43
    const/4 v11, 0x0

    :goto_1c
    move v0, v11

    .line 2646
    .local v0, "hasHoldCall":Z
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    if-eqz v10, :cond_44

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v10, v10, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v10, :cond_44

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2647
    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v11, v11, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 2648
    invoke-virtual {v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v12

    .line 2647
    invoke-interface {v10, v11, v12, v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleCallStartFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Ljava/lang/Object;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_44

    .line 2649
    goto/16 :goto_25

    .line 2652
    :cond_44
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->callTerminated()V

    .line 2655
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget v10, v10, Lcom/mediatek/ims/ImsCallSessionProxy;->mScreenTouchCount:I

    if-eqz v10, :cond_45

    .line 2656
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/oplus/nec/OplusNecManager;->getInstance(Landroid/content/Context;)Lcom/oplus/nec/OplusNecManager;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget v12, v12, Lcom/mediatek/ims/ImsCallSessionProxy;->mScreenTouchCount:I

    move/from16 v16, v0

    .end local v0    # "hasHoldCall":Z
    .local v16, "hasHoldCall":Z
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mScreenTouchSuccCount:I

    invoke-virtual {v10, v11, v12, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastScreenTouch(III)V

    goto/16 :goto_25

    .line 2655
    .end local v16    # "hasHoldCall":Z
    .restart local v0    # "hasHoldCall":Z
    :cond_45
    move/from16 v16, v0

    .end local v0    # "hasHoldCall":Z
    .restart local v16    # "hasHoldCall":Z
    goto/16 :goto_25

    .line 2610
    .end local v16    # "hasHoldCall":Z
    :sswitch_28
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2611
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2613
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 2616
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2617
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    goto :goto_1d

    .line 2616
    :cond_46
    const/4 v10, 0x4

    .line 2620
    :goto_1d
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 2621
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2622
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->isIgnoreUpdateStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 2624
    :try_start_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2628
    goto :goto_1e

    .line 2625
    :catch_5
    move-exception v0

    .line 2626
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException callSessionResumed()"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2631
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_47
    :goto_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 2632
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    const/16 v10, 0x84

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->onReceiveCallSessionEvent(I)V

    goto/16 :goto_25

    .line 2635
    :cond_48
    if-nez v8, :cond_49

    if-eqz v7, :cond_5d

    .line 2636
    :cond_49
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_25

    .line 2579
    :sswitch_29
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2580
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v7

    .line 2581
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v10

    if-eqz v10, :cond_5d

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    if-eq v10, v0, :cond_5d

    .line 2582
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2583
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6500(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2584
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->isDeviceSwitching()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2585
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->isIgnoreUpdateStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2587
    :try_start_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2590
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2591
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1f

    .line 2594
    :catch_6
    move-exception v0

    .line 2595
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException callSessionHeld()"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2596
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4a
    :goto_1f
    goto :goto_20

    .line 2598
    :cond_4b
    if-nez v8, :cond_4c

    if-eqz v7, :cond_4d

    .line 2599
    :cond_4c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2602
    :cond_4d
    :goto_20
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2604
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x1

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6702(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_25

    .line 2568
    :sswitch_2a
    const/4 v0, 0x0

    .line 2569
    .local v0, "videoIbt":I
    const/4 v10, 0x2

    aget-object v11, v13, v10

    if-eqz v11, :cond_4e

    .line 2570
    aget-object v11, v13, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2572
    :cond_4e
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "videoIbt= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2573
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2574
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2575
    goto/16 :goto_25

    .line 2511
    .end local v0    # "videoIbt":I
    :sswitch_2b
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2512
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v11, 0x3

    iput v11, v10, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2515
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2517
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    if-eq v10, v0, :cond_51

    .line 2518
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2523
    :try_start_8
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2524
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v10, v10, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2526
    :cond_4f
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    .line 2530
    goto :goto_21

    .line 2527
    :catch_7
    move-exception v0

    .line 2528
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v11, "RuntimeException callSessionProgressing()/callSessionInitiated()"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2532
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_50
    :goto_21
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2535
    :cond_51
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 2536
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lcom/mediatek/ims/internal/ImsVTProvider;->onReceiveCallSessionEvent(I)V

    .line 2539
    :cond_52
    const/4 v0, 0x0

    .line 2541
    .local v0, "notifyCallSessionUpdate":Z
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2542
    .local v10, "oldCallType":I
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v12

    invoke-static {v11, v3, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2545
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2547
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    iget v11, v11, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v11, v10, :cond_53

    .line 2548
    const/4 v0, 0x1

    .line 2551
    :cond_53
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v11

    if-eqz v11, :cond_54

    .line 2552
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2553
    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v12

    iget v12, v12, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v12}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v12

    .line 2552
    invoke-virtual {v11, v12}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateProfile(I)V

    .line 2556
    :cond_54
    if-eqz v0, :cond_55

    .line 2557
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2561
    :cond_55
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2564
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6100(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2565
    goto/16 :goto_25

    .line 2467
    .end local v0    # "notifyCallSessionUpdate":Z
    .end local v10    # "oldCallType":I
    :sswitch_2c
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    move-result v10

    .line 2469
    .local v10, "isIbt":I
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2472
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11, v3, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2476
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2478
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    if-eq v11, v0, :cond_57

    .line 2479
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x2

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2480
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 2482
    :try_start_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    iget-object v11, v11, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v11}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8

    .line 2485
    goto :goto_22

    .line 2483
    :catch_8
    move-exception v0

    .line 2484
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v12, "RuntimeException callSessionRemoveParticipantsRequestFailed()"

    const/4 v2, 0x5

    invoke-static {v11, v12, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2487
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_56
    :goto_22
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2489
    if-eqz v8, :cond_57

    .line 2490
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2493
    :cond_57
    const/16 v2, 0x9

    aget-object v0, v13, v2

    if-eqz v0, :cond_5d

    aget-object v0, v13, v2

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2497
    :try_start_a
    aget-object v0, v13, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_9

    .line 2501
    .end local v15    # "causeNum":I
    .local v0, "causeNum":I
    move v15, v0

    const/4 v2, 0x2

    goto :goto_23

    .line 2498
    .end local v0    # "causeNum":I
    .restart local v15    # "causeNum":I
    :catch_9
    move-exception v0

    .line 2499
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    .line 2500
    .end local v15    # "causeNum":I
    .local v11, "causeNum":I
    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v16, "e":Ljava/lang/NumberFormatException;
    const-string v0, "Invalid Number Format:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v13, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v12, v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    move v15, v11

    .line 2503
    .end local v11    # "causeNum":I
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "causeNum":I
    :goto_23
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "causeNum = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2504
    if-eqz v15, :cond_5d

    .line 2505
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v15, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5900(Lcom/mediatek/ims/ImsCallSessionProxy;ILjava/lang/String;)V

    goto/16 :goto_25

    .line 2421
    .end local v10    # "isIbt":I
    :sswitch_2d
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2422
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2423
    const/4 v2, 0x5

    aget-object v0, v13, v2

    if-eqz v0, :cond_58

    aget-object v0, v13, v2

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 2424
    aget-object v0, v13, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2427
    :cond_58
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v2

    const/4 v10, 0x0

    invoke-static {v0, v2, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z

    .line 2428
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2430
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2432
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2434
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2435
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v0, :cond_5a

    .line 2436
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionRinging(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_24

    .line 2439
    :cond_59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2440
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "android:imsCallID"

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    const-string v2, "android:imsDialString"

    const/4 v10, 0x6

    aget-object v10, v13, v10

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    const-string v2, "android:imsServiceId"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2444
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v11

    invoke-virtual {v2, v10, v11, v0}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 2447
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_5a
    :goto_24
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2449
    const/4 v0, 0x0

    .line 2450
    .local v0, "mtVideoIbt":I
    const/4 v2, 0x2

    aget-object v10, v13, v2

    if-eqz v10, :cond_5b

    .line 2451
    aget-object v10, v13, v2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2453
    :cond_5b
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ECPI 0, mtVideoIbt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v2, v10, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2458
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5c

    .line 2460
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v0, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 2461
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2463
    :cond_5c
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v10, 0x1

    invoke-static {v2, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2465
    nop

    .line 2685
    .end local v0    # "mtVideoIbt":I
    .end local v9    # "serviceId":I
    :cond_5d
    :goto_25
    goto/16 :goto_27

    .end local v8    # "isCallDisplayUpdated":Z
    .local v0, "isCallDisplayUpdated":Z
    :cond_5e
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_65

    const/16 v2, 0x82

    if-ne v5, v2, :cond_65

    .line 2687
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage() : receive 130 URC, assign call_id = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x0

    aget-object v11, v13, v10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    invoke-static {v2, v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2689
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v2, v13, v8, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2690
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v2, :cond_5f

    .line 2691
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionCalling()V

    .line 2694
    :cond_5f
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2695
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    aget-object v8, v13, v9

    invoke-direct {v1, v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2696
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    aget-object v8, v13, v9

    invoke-direct {v1, v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateOIR(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v2

    if-nez v2, :cond_60

    .line 2700
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z

    goto :goto_26

    .line 2699
    :cond_60
    const/4 v9, 0x0

    .line 2702
    :goto_26
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2703
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v13, v9

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2705
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2706
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 2707
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2708
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->bind(Lcom/mediatek/ims/internal/ImsVTProvider;II)V

    .line 2710
    :cond_61
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2711
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2712
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    const/4 v10, 0x0

    aget-object v11, v13, v10

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    .line 2711
    invoke-virtual {v2, v8, v9, v11, v10}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 2713
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7200(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/mediatek/ims/DefaultConferenceHandler;->addLocalCache([Ljava/lang/String;)V

    .line 2714
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7202(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2719
    :cond_62
    if-nez v0, :cond_63

    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_64

    .line 2720
    :cond_63
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2723
    :cond_64
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2724
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2725
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2726
    iget-object v2, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 3233
    .end local v0    # "isCallDisplayUpdated":Z
    .end local v5    # "msgType":I
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "isVideoCapUpdated":Z
    .end local v13    # "callInfo":[Ljava/lang/String;
    .end local v14    # "isCallProfileUpdated":Z
    .end local v15    # "causeNum":I
    :cond_65
    :goto_27
    return-void

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_23
        0x68 -> :sswitch_22
        0x69 -> :sswitch_21
        0x6a -> :sswitch_20
        0x6b -> :sswitch_1f
        0x6d -> :sswitch_1e
        0x6e -> :sswitch_1d
        0x6f -> :sswitch_1c
        0xc9 -> :sswitch_1b
        0xcb -> :sswitch_1a
        0xcc -> :sswitch_19
        0xcd -> :sswitch_18
        0xce -> :sswitch_17
        0xcf -> :sswitch_16
        0xd0 -> :sswitch_15
        0xd1 -> :sswitch_1b
        0xd2 -> :sswitch_14
        0xd3 -> :sswitch_13
        0xd4 -> :sswitch_12
        0xd5 -> :sswitch_11
        0xd6 -> :sswitch_10
        0xd7 -> :sswitch_f
        0xd8 -> :sswitch_1b
        0xd9 -> :sswitch_e
        0xda -> :sswitch_d
        0xdb -> :sswitch_c
        0xdc -> :sswitch_b
        0xdf -> :sswitch_a
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_8
        0xe2 -> :sswitch_7
        0xe3 -> :sswitch_6
        0xe4 -> :sswitch_5
        0xe5 -> :sswitch_4
        0xe6 -> :sswitch_3
        0xe8 -> :sswitch_2
        0xe9 -> :sswitch_1
        0xea -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2d
        0x2 -> :sswitch_2c
        0x6 -> :sswitch_2b
        0x7 -> :sswitch_2a
        0x83 -> :sswitch_29
        0x84 -> :sswitch_28
        0x85 -> :sswitch_27
        0x87 -> :sswitch_26
        0x88 -> :sswitch_25
        0x89 -> :sswitch_24
    .end sparse-switch
.end method

.method public isAllowCNAP(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 3733
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 3734
    .local v0, "subId":I
    nop

    .line 3735
    const-string v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3736
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3737
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 3738
    .local v2, "config":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_0

    const-string v3, "disable_cnap_bool"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3739
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "disable CNAP"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3740
    return v4

    .line 3743
    .end local v2    # "config":Landroid/os/PersistableBundle;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
