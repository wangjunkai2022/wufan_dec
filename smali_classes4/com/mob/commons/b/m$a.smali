.class Lcom/mob/commons/b/m$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/mob/commons/b/m;


# direct methods
.method public constructor <init>(Lcom/mob/commons/b/m;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput p2, p0, Lcom/mob/commons/b/m$a;->a:I

    .line 3
    iput-object p1, p0, Lcom/mob/commons/b/m$a;->b:Lcom/mob/commons/b/m;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/commons/b/m$a;->b:Lcom/mob/commons/b/m;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/mob/commons/b/m$a;->a:I

    invoke-static {v0, p1, v1}, Lcom/mob/commons/b/m;->a(Lcom/mob/commons/b/m;ZI)V

    :cond_0
    return-void
.end method
