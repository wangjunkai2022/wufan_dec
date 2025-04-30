.class public abstract Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23ea08d00c05296cL

.field public static final u:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final v:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final w:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final x:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final y:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field private static final z:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->u:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 2
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->v:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 3
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->w:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 4
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->x:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 5
    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->y:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    .line 6
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->z:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a:Z

    .line 3
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c:Z

    .line 5
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d:Z

    const-string v2, "["

    .line 6
    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e:Ljava/lang/String;

    const-string v2, "]"

    .line 7
    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f:Ljava/lang/String;

    const-string v2, "="

    .line 8
    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g:Ljava/lang/String;

    .line 9
    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h:Z

    .line 10
    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i:Z

    const-string v1, ","

    .line 11
    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    const-string v2, "{"

    .line 12
    iput-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    .line 14
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m:Z

    const-string v1, "}"

    .line 15
    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    .line 16
    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->o:Z

    const-string v0, "<null>"

    .line 17
    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->p:Ljava/lang/String;

    const-string v0, "<size="

    .line 18
    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->q:Ljava/lang/String;

    const-string v0, ">"

    .line 19
    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->r:Ljava/lang/String;

    const-string v1, "<"

    .line 20
    iput-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->s:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t:Ljava/lang/String;

    return-void
.end method

.method static E0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static K0(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t0()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->z:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t0()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static g1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t0()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method

.method static t0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected A(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected A0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->o:Z

    return v0
.end method

.method protected B(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected B0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i:Z

    return v0
.end method

.method protected C(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected C0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h:Z

    return v0
.end method

.method protected D(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "coll"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected D0(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullDetailRequest"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->o:Z

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected E(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected F(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected F0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b:Z

    return v0
.end method

.method protected G(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected G0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a:Z

    return v0
.end method

.method protected H(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->w(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected H0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d:Z

    return v0
.end method

.method protected I(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->x(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected I0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c:Z

    return v0
.end method

.method protected J(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->y(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected J0(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-lez v1, :cond_0

    .line 4
    iget-object v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m:Z

    invoke-virtual {p0, p1, p2, v2, v3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->V(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected K(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->z(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected L(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->A(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected L0(Ljava/lang/StringBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 2
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    if-lt v0, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    return-void
.end method

.method protected M(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->B(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected M0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayContentDetail"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m:Z

    return-void
.end method

.method protected N(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p3, v0

    if-lez v0, :cond_0

    .line 4
    iget-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->V(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected N0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayEnd"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    return-void
.end method

.method protected O(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->F(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected O0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arraySeparator"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    return-void
.end method

.method protected P(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->G(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected P0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayStart"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    return-void
.end method

.method public Q(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "object"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->L0(Ljava/lang/StringBuffer;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t(Ljava/lang/StringBuffer;)V

    .line 4
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g1(Ljava/lang/Object;)V

    return-void
.end method

.method protected Q0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentEnd"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f:Ljava/lang/String;

    return-void
.end method

.method protected R(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->S(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected R0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentStart"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e:Ljava/lang/String;

    return-void
.end method

.method protected S(Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected S0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultFullDetail"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->o:Z

    return-void
.end method

.method protected T(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected T0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNameValueSeparator"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g:Ljava/lang/String;

    return-void
.end method

.method protected U(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "object"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->K0(Ljava/lang/Object;)V

    const/16 v0, 0x40

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected U0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldSeparator"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    return-void
.end method

.method protected V(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value",
            "detail"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->E0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->v(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->K0(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 5
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 7
    :cond_2
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 8
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->E(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 9
    :cond_3
    move-object p4, p3

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 10
    :cond_4
    instance-of v0, p3, [J

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 11
    move-object p4, p3

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->M(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 12
    :cond_5
    move-object p4, p3

    check-cast p4, [J

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e0(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 13
    :cond_6
    instance-of v0, p3, [I

    if-eqz v0, :cond_8

    if-eqz p4, :cond_7

    .line 14
    move-object p4, p3

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->L(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 15
    :cond_7
    move-object p4, p3

    check-cast p4, [I

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d0(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 16
    :cond_8
    instance-of v0, p3, [S

    if-eqz v0, :cond_a

    if-eqz p4, :cond_9

    .line 17
    move-object p4, p3

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->O(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 18
    :cond_9
    move-object p4, p3

    check-cast p4, [S

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g0(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 19
    :cond_a
    instance-of v0, p3, [B

    if-eqz v0, :cond_c

    if-eqz p4, :cond_b

    .line 20
    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->H(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 21
    :cond_b
    move-object p4, p3

    check-cast p4, [B

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->Z(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 22
    :cond_c
    instance-of v0, p3, [C

    if-eqz v0, :cond_e

    if-eqz p4, :cond_d

    .line 23
    move-object p4, p3

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->I(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 24
    :cond_d
    move-object p4, p3

    check-cast p4, [C

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a0(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 25
    :cond_e
    instance-of v0, p3, [D

    if-eqz v0, :cond_10

    if-eqz p4, :cond_f

    .line 26
    move-object p4, p3

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->J(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 27
    :cond_f
    move-object p4, p3

    check-cast p4, [D

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b0(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 28
    :cond_10
    instance-of v0, p3, [F

    if-eqz v0, :cond_12

    if-eqz p4, :cond_11

    .line 29
    move-object p4, p3

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->K(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 30
    :cond_11
    move-object p4, p3

    check-cast p4, [F

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c0(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 31
    :cond_12
    instance-of v0, p3, [Z

    if-eqz v0, :cond_14

    if-eqz p4, :cond_13

    .line 32
    move-object p4, p3

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->P(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 33
    :cond_13
    move-object p4, p3

    check-cast p4, [Z

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h0(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 34
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p4, :cond_15

    .line 35
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->N(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_15
    move-object p4, p3

    check-cast p4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f0(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_16
    if-eqz p4, :cond_17

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->C(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->Y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g1(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g1(Ljava/lang/Object;)V

    .line 40
    throw p1
.end method

.method protected V0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldSeparatorAtEnd"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i:Z

    return-void
.end method

.method protected W(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected W0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldSeparatorAtStart"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h:Z

    return-void
.end method

.method public X(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "object"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->s(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->U(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->u(Ljava/lang/StringBuffer;)V

    .line 4
    iget-boolean p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->S(Ljava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method protected X0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nullText"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->p:Ljava/lang/String;

    return-void
.end method

.method protected Y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->u0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected Y0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeEndText"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->r:Ljava/lang/String;

    return-void
.end method

.method protected Z(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected Z0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeStartText"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->q:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->w(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected a0(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected a1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summaryObjectEndText"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->x(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected b0(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summaryObjectStartText"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->s:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->y(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected c0(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected c1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useClassName"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b:Z

    return-void
.end method

.method public d(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->z(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected d0(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected d1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useFieldNames"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a:Z

    return-void
.end method

.method public e(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->A(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected e0(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected e1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useIdentityHashCode"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d:Z

    return-void
.end method

.method public f(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->B(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected f0(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected f1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useShortClassName"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c:Z

    return-void
.end method

.method public g(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->V(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected g0(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method public h(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->F(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected h0(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array"
        }
    .end annotation

    .line 1
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method public i(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->G(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected i0(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "size"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3
    iget-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public j(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->H(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->Z(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public j0(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "superToString"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k0(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->I(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->a0(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public k0(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "toString"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 3
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->L0(Ljava/lang/StringBuffer;)V

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->S(Ljava/lang/StringBuffer;)V

    :cond_1
    return-void
.end method

.method public l(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->J(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b0(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected l0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->K(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c0(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected m0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->L(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->d0(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected n0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->k:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->M(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e0(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected o0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->N(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f0(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected p0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->O(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g0(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected q0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->g:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "array",
            "fullDetail"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->T(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->W(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->D0(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->P(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->h0(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->R(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected r0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected s(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "object"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->b:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->K0(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->c:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->u0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected s0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected t(Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected u(Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected u0(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/d;->v(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected v(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3}, Lexternal/org/apache/commons/lang3/ObjectUtils;->k(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method protected v0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->r:Ljava/lang/String;

    return-object v0
.end method

.method protected w(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected w0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected x(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected x0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->t:Ljava/lang/String;

    return-object v0
.end method

.method protected y(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected y0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected z(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "fieldName",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected z0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->m:Z

    return v0
.end method
