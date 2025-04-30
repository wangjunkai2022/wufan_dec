.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/join/mgps/dto/GameVoucherBean;


# direct methods
.method public constructor <init>(ZLcom/join/mgps/dto/GameVoucherBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;->a:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$v;->b:Lcom/join/mgps/dto/GameVoucherBean;

    return-void
.end method
