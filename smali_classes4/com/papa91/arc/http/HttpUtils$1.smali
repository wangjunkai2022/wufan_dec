.class Lcom/papa91/arc/http/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/http/HttpUtils;->type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/reflect/Type;

.field final synthetic val$raw:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/http/HttpUtils$1;->val$raw:Ljava/lang/Class;

    iput-object p2, p0, Lcom/papa91/arc/http/HttpUtils$1;->val$args:[Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/HttpUtils$1;->val$args:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/HttpUtils$1;->val$raw:Ljava/lang/Class;

    return-object v0
.end method
