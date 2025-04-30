.class public Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;
.super Ljava/lang/Object;
.source "EverydayNewGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/join/mgps/business/RecomDatabeanBusiness;


# direct methods
.method public constructor <init>(Lcom/join/mgps/business/RecomDatabeanBusiness;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$l$b;->a:Lcom/join/mgps/business/RecomDatabeanBusiness;

    return-void
.end method
