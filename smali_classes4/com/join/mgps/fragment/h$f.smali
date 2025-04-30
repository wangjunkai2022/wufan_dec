.class Lcom/join/mgps/fragment/h$f;
.super Ljava/lang/Object;
.source "ChoiceFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/h;->P(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/h;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/h;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/h$f;->b:Lcom/join/mgps/fragment/h;

    iput p2, p0, Lcom/join/mgps/fragment/h$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/h$f;->b:Lcom/join/mgps/fragment/h;

    iget v1, p0, Lcom/join/mgps/fragment/h$f;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/h;->j0(Lcom/join/mgps/fragment/h;I)V

    return-void
.end method
