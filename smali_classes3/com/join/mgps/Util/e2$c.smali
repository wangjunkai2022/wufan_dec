.class Lcom/join/mgps/Util/e2$c;
.super Ljava/lang/Thread;
.source "TCUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/e2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/Util/e2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/e2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/e2$c;->f:Lcom/join/mgps/Util/e2;

    iput-object p2, p0, Lcom/join/mgps/Util/e2$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/Util/e2$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/Util/e2$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/Util/e2$c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/join/mgps/Util/e2$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/e2$c;->f:Lcom/join/mgps/Util/e2;

    iget-object v1, p0, Lcom/join/mgps/Util/e2$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/Util/e2$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/Util/e2$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/Util/e2$c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/mgps/Util/e2$c;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/e2;->c(Lcom/join/mgps/Util/e2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
