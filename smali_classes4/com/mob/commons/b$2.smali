.class final Lcom/mob/commons/b$2;
.super Lcom/mob/tools/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/b;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mob/commons/b$2;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mob/commons/l;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/b$2$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/b$2$1;-><init>(Lcom/mob/commons/b$2;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/mob/commons/l;->a(Ljava/io/File;ZLcom/mob/commons/k;)Z

    return-void
.end method
