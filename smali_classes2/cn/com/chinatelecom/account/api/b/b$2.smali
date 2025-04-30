.class Lcn/com/chinatelecom/account/api/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/chinatelecom/account/api/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/b/b;->b(Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcn/com/chinatelecom/account/api/b/a;

.field final synthetic g:Lcn/com/chinatelecom/account/api/b/b;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/b/b;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/b/b$2;->g:Lcn/com/chinatelecom/account/api/b/b;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/b/b$2;->a:Ljava/lang/String;

    iput p3, p0, Lcn/com/chinatelecom/account/api/b/b$2;->b:I

    iput-object p4, p0, Lcn/com/chinatelecom/account/api/b/b$2;->c:Landroid/content/Context;

    iput-object p5, p0, Lcn/com/chinatelecom/account/api/b/b$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/chinatelecom/account/api/b/b$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/chinatelecom/account/api/b/b$2;->f:Lcn/com/chinatelecom/account/api/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$2;->g:Lcn/com/chinatelecom/account/api/b/b;

    sget-object v1, Lcn/com/chinatelecom/account/api/e/j;->o:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/b/b$2;->a:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/chinatelecom/account/api/b/b$2;->f:Lcn/com/chinatelecom/account/api/b/a;

    const v1, 0x13ba0

    const-wide/16 v4, 0x9c4

    const-string v6, "Switching network timeout (4.x)"

    invoke-static/range {v0 .. v7}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    return-void
.end method

.method public a(J)V
    .locals 8

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/b/b$2;->g:Lcn/com/chinatelecom/account/api/b/b;

    sget-object v1, Lcn/com/chinatelecom/account/api/e/j;->p:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/b/b$2;->a:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/chinatelecom/account/api/b/b$2;->f:Lcn/com/chinatelecom/account/api/b/a;

    const v1, 0x13ba1

    const-string v6, "Switching network failed (4.x)"

    move-wide v4, p1

    invoke-static/range {v0 .. v7}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    return-void
.end method

.method public a(Landroid/net/Network;J)V
    .locals 13

    move-object v0, p0

    move-wide v5, p2

    iget-object v1, v0, Lcn/com/chinatelecom/account/api/b/b$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcn/com/chinatelecom/account/api/e/e;->b(J)Lcn/com/chinatelecom/account/api/e/e;

    iget v1, v0, Lcn/com/chinatelecom/account/api/b/b$2;->b:I

    int-to-long v1, v1

    sub-long v8, v1, v5

    const-wide/16 v1, 0x64

    cmp-long v3, v8, v1

    if-lez v3, :cond_0

    iget-object v3, v0, Lcn/com/chinatelecom/account/api/b/b$2;->g:Lcn/com/chinatelecom/account/api/b/b;

    iget-object v4, v0, Lcn/com/chinatelecom/account/api/b/b$2;->c:Landroid/content/Context;

    iget-object v5, v0, Lcn/com/chinatelecom/account/api/b/b$2;->d:Ljava/lang/String;

    iget-object v6, v0, Lcn/com/chinatelecom/account/api/b/b$2;->e:Ljava/lang/String;

    iget-object v10, v0, Lcn/com/chinatelecom/account/api/b/b$2;->a:Ljava/lang/String;

    iget-object v12, v0, Lcn/com/chinatelecom/account/api/b/b$2;->f:Lcn/com/chinatelecom/account/api/b/a;

    const-string v11, "preCodeByJs"

    move-object v7, p1

    invoke-static/range {v3 .. v12}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;JLjava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcn/com/chinatelecom/account/api/b/b$2;->g:Lcn/com/chinatelecom/account/api/b/b;

    sget-object v2, Lcn/com/chinatelecom/account/api/e/j;->a:[B

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcn/com/chinatelecom/account/api/b/b$2;->a:Ljava/lang/String;

    iget-object v8, v0, Lcn/com/chinatelecom/account/api/b/b$2;->f:Lcn/com/chinatelecom/account/api/b/a;

    const v2, 0x13880

    const-string v7, ""

    move-wide v5, p2

    invoke-static/range {v1 .. v8}, Lcn/com/chinatelecom/account/api/b/b;->a(Lcn/com/chinatelecom/account/api/b/b;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    :goto_0
    return-void
.end method
