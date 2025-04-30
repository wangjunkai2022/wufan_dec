.class Lcom/join/mgps/activity/k2$m;
.super Ljava/lang/Object;
.source "PapaMainV2Fragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/k2;->E1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PAPAHomeBeanV7;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/join/mgps/activity/k2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/k2;Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/k2$m;->e:Lcom/join/mgps/activity/k2;

    iput-object p2, p0, Lcom/join/mgps/activity/k2$m;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7;

    iput-object p3, p0, Lcom/join/mgps/activity/k2$m;->b:Ljava/lang/String;

    iput p4, p0, Lcom/join/mgps/activity/k2$m;->c:I

    iput-boolean p5, p0, Lcom/join/mgps/activity/k2$m;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/k2$m;->e:Lcom/join/mgps/activity/k2;

    iget-object v1, p0, Lcom/join/mgps/activity/k2$m;->a:Lcom/join/mgps/dto/PAPAHomeBeanV7;

    iget-object v2, p0, Lcom/join/mgps/activity/k2$m;->b:Ljava/lang/String;

    iget v3, p0, Lcom/join/mgps/activity/k2$m;->c:I

    iget-boolean v4, p0, Lcom/join/mgps/activity/k2$m;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/activity/k2;->u2(Lcom/join/mgps/activity/k2;Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    return-void
.end method
