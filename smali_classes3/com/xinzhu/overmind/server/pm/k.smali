.class public final synthetic Lcom/xinzhu/overmind/server/pm/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xinzhu/overmind/server/pm/m;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xinzhu/overmind/server/pm/m;Ljava/lang/Object;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/k;->a:Lcom/xinzhu/overmind/server/pm/m;

    iput-object p2, p0, Lcom/xinzhu/overmind/server/pm/k;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/xinzhu/overmind/server/pm/k;->c:I

    iput-boolean p4, p0, Lcom/xinzhu/overmind/server/pm/k;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/k;->a:Lcom/xinzhu/overmind/server/pm/m;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/k;->b:Ljava/lang/Object;

    iget v2, p0, Lcom/xinzhu/overmind/server/pm/k;->c:I

    iget-boolean v3, p0, Lcom/xinzhu/overmind/server/pm/k;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/pm/l;->g(Lcom/xinzhu/overmind/server/pm/m;Ljava/lang/Object;IZ)V

    return-void
.end method
