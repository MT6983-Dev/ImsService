.class Lcom/mediatek/ims/internal/ImsVTProvider$1;
.super Landroid/os/Handler;
.source "ImsVTProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/ImsVTProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsVTProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 465
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 468
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 576
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendRejectUpgradeResponseInternal()V

    .line 577
    goto/16 :goto_0

    .line 565
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 567
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 568
    .local v1, "callRat":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateCallRatInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .end local v1    # "callRat":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 571
    nop

    .line 572
    goto/16 :goto_0

    .line 570
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 571
    throw v1

    .line 554
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 556
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 558
    .local v1, "event":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->receiveCallSessionEventInternal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 560
    .end local v1    # "event":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 561
    nop

    .line 562
    goto/16 :goto_0

    .line 560
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 561
    throw v1

    .line 543
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 545
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 547
    .local v1, "state":I
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->updateProfileInternal(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 549
    .end local v1    # "state":I
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 550
    nop

    .line 551
    goto/16 :goto_0

    .line 549
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 550
    throw v1

    .line 540
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->resetWrapperInternal()V

    .line 541
    goto/16 :goto_0

    .line 528
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 530
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 532
    .local v1, "isRoaming":Z
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->switchRoamingInternal(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 534
    .end local v1    # "isRoaming":Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 535
    nop

    .line 537
    goto/16 :goto_0

    .line 534
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 535
    throw v1

    .line 515
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 517
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 518
    .local v1, "feature":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 520
    .local v2, "on":Z
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->switchFeatureInternal(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 522
    .end local v1    # "feature":I
    .end local v2    # "on":Z
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 523
    nop

    .line 525
    goto/16 :goto_0

    .line 522
    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 523
    throw v1

    .line 512
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->setUIModeInternal(IZ)V

    .line 513
    goto/16 :goto_0

    .line 509
    :sswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->startScreenRecordingInternal()V

    .line 510
    goto/16 :goto_0

    .line 506
    :sswitch_9
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setPauseImageInternal(Landroid/net/Uri;)V

    .line 507
    goto :goto_0

    .line 503
    :sswitch_a
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCallDataUsageInternal()V

    .line 504
    goto :goto_0

    .line 500
    :sswitch_b
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->requestCameraCapabilitiesInternal()V

    .line 501
    goto :goto_0

    .line 497
    :sswitch_c
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyResponseInternal(Landroid/telecom/VideoProfile;)V

    .line 498
    goto :goto_0

    .line 485
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 487
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    .line 488
    .local v1, "fromProfile":Landroid/telecom/VideoProfile;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 490
    .local v2, "toProfile":Landroid/telecom/VideoProfile;
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->sendSessionModifyRequestInternal(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 492
    .end local v1    # "fromProfile":Landroid/telecom/VideoProfile;
    .end local v2    # "toProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 493
    nop

    .line 494
    goto :goto_0

    .line 492
    :catchall_5
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 493
    throw v1

    .line 482
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setZoomInternal(F)V

    .line 483
    goto :goto_0

    .line 479
    :sswitch_f
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDeviceOrientationInternal(I)V

    .line 480
    goto :goto_0

    .line 476
    :sswitch_10
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setDisplaySurfaceInternal(Landroid/view/Surface;)V

    .line 477
    goto :goto_0

    .line 473
    :sswitch_11
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setPreviewSurfaceInternal(Landroid/view/Surface;)V

    .line 474
    goto :goto_0

    .line 470
    :sswitch_12
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProvider$1;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->setCameraInternal(Ljava/lang/String;)V

    .line 471
    nop

    .line 583
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_11
        0x4 -> :sswitch_10
        0x5 -> :sswitch_f
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_c
        0x9 -> :sswitch_b
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_8
        0x2bd -> :sswitch_7
        0x2be -> :sswitch_6
        0x2bf -> :sswitch_5
        0x2c0 -> :sswitch_4
        0x2c1 -> :sswitch_3
        0x2c2 -> :sswitch_2
        0x2c3 -> :sswitch_1
        0x2c4 -> :sswitch_0
    .end sparse-switch
.end method
