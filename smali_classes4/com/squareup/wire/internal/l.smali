.class public final Lcom/squareup/wire/internal/l;
.super Ljava/lang/Object;
.source "OneOfBinding.kt"

# interfaces
.implements Lcom/squareup/wire/internal/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Lcom/squareup/wire/internal/d<",
        "TM;TB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0014\u0008\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001*\u0014\u0008\u0001\u0010\u0004*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005B+\u0008\u0000\u0012\u0006\u0010%\u001a\u00020\"\u0012\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u000106\u0012\n\u00105\u001a\u0006\u0012\u0002\u0008\u000303\u00a2\u0006\u0004\u00088\u00109J\u000c\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006H\u0016J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00028\u00012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00028\u0001H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000c\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0006H\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008H\u0016R\u0016\u0010\u001d\u001a\u00020\u001a8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010&\u001a\u00020\u001e8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010 R\u0016\u0010\'\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010$R\u0016\u0010*\u001a\u00020\u00188V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0016\u0010,\u001a\u00020\u00188V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010)R\u0016\u0010.\u001a\u00020\u001e8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010 R\u0016\u00102\u001a\u00020/8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u001a\u00105\u001a\u0006\u0012\u0002\u0008\u0003038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u00104\u00a8\u0006:"
    }
    d2 = {
        "Lcom/squareup/wire/internal/l;",
        "Lcom/squareup/wire/Message;",
        "M",
        "Lcom/squareup/wire/Message$a;",
        "B",
        "Lcom/squareup/wire/internal/d;",
        "Lcom/squareup/wire/ProtoAdapter;",
        "keyAdapter",
        "",
        "adapter",
        "builder",
        "value",
        "",
        "c",
        "(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V",
        "h",
        "message",
        "d",
        "(Lcom/squareup/wire/Message;)Ljava/lang/Object;",
        "i",
        "(Lcom/squareup/wire/Message$a;)Ljava/lang/Object;",
        "a",
        "Lcom/squareup/wire/Syntax;",
        "syntax",
        "",
        "f",
        "",
        "getTag",
        "()I",
        "tag",
        "",
        "g",
        "()Ljava/lang/String;",
        "wireFieldJsonName",
        "Ljava/lang/reflect/Field;",
        "b",
        "Ljava/lang/reflect/Field;",
        "messageField",
        "declaredName",
        "builderField",
        "e",
        "()Z",
        "redacted",
        "j",
        "isMap",
        "getName",
        "name",
        "Lcom/squareup/wire/WireField$Label;",
        "getLabel",
        "()Lcom/squareup/wire/WireField$Label;",
        "label",
        "Lcom/squareup/wire/j$a;",
        "Lcom/squareup/wire/j$a;",
        "key",
        "Ljava/lang/Class;",
        "builderType",
        "<init>",
        "(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/squareup/wire/j$a;)V",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Field;

.field private final b:Ljava/lang/reflect/Field;

.field private final c:Lcom/squareup/wire/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/j$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/squareup/wire/j$a;)V
    .locals 1
    .param p1    # Ljava/lang/reflect/Field;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/wire/j$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TB;>;",
            "Lcom/squareup/wire/j$a<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "messageField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/internal/l;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const-string p2, "builderType.getDeclaredField(messageField.name)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/squareup/wire/internal/l;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/wire/ProtoAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/internal/l;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public adapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/Message$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/internal/l;->h(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/squareup/wire/Message;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/j;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/j;->h(Lcom/squareup/wire/j$a;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->d()Z

    move-result v0

    return v0
.end method

.method public f(Lcom/squareup/wire/Syntax;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Lcom/squareup/wire/Syntax;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "syntax"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/squareup/wire/WireField$Label;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/squareup/wire/WireField$Label;->OPTIONAL:Lcom/squareup/wire/WireField$Label;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {v0}, Lcom/squareup/wire/j$a;->e()I

    move-result v0

    return v0
.end method

.method public h(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lcom/squareup/wire/Message$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->a:Ljava/lang/reflect/Field;

    new-instance v1, Lcom/squareup/wire/j;

    iget-object v2, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    const-string v3, "null cannot be cast to non-null type com.squareup.wire.OneOf.Key<kotlin.Any>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Lcom/squareup/wire/j;-><init>(Lcom/squareup/wire/j$a;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Lcom/squareup/wire/Message$a;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/squareup/wire/Message$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/j;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/wire/internal/l;->c:Lcom/squareup/wire/j$a;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/j;->h(Lcom/squareup/wire/j$a;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyAdapter()Lcom/squareup/wire/ProtoAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a map"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
