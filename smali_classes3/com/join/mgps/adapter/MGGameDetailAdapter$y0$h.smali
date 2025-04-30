.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;


# direct methods
.method public constructor <init>(ZLcom/join/mgps/dto/GiftPackageDataInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;->a:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$h;->b:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    return-void
.end method
