.class public final Lc1/h0/g/h;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"


# instance fields
.field public final a:J

.field public final b:Lc1/h0/f/c;

.field public final c:Lc1/h0/g/h$a;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lc1/h0/g/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Lc1/h0/f/d;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p5, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lc1/h0/g/h;->e:I

    .line 2
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lc1/h0/g/h;->a:J

    .line 3
    invoke-virtual {p1}, Lc1/h0/f/d;->f()Lc1/h0/f/c;

    move-result-object p1

    iput-object p1, p0, Lc1/h0/g/h;->b:Lc1/h0/f/c;

    .line 4
    new-instance p1, Lc1/h0/g/h$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lc1/h0/c;->g:Ljava/lang/String;

    const-string v0, " ConnectionPool"

    invoke-static {p2, p5, v0}, Ld0/e/a/a/a;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lc1/h0/g/h$a;-><init>(Lc1/h0/g/h;Ljava/lang/String;)V

    iput-object p1, p0, Lc1/h0/g/h;->c:Lc1/h0/g/h$a;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lc1/h0/g/h;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "keepAliveDuration <= 0: "

    .line 6
    invoke-static {p1, p3, p4}, Ld0/e/a/a/a;->i(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(Lc1/a;Lc1/h0/g/e;Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/a;",
            "Lc1/h0/g/e;",
            "Ljava/util/List<",
            "Lc1/g0;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc1/h0/g/h;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/h0/g/g;

    const-string v2, "connection"

    .line 2
    invoke-static {v1, v2}, La1/n/b/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v1

    if-eqz p4, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Lc1/h0/g/g;->j()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1, p1, p3}, Lc1/h0/g/g;->h(Lc1/a;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 5
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {p2, v1}, Lc1/h0/g/e;->c(Lc1/h0/g/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 7
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v1

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lc1/h0/g/g;J)I
    .locals 6

    .line 1
    sget-object v0, Lc1/h0/c;->a:[B

    .line 2
    iget-object v0, p1, Lc1/h0/g/g;->o:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 5
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    check-cast v3, Lc1/h0/g/e$b;

    const-string v4, "A connection to "

    .line 7
    invoke-static {v4}, Ld0/e/a/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8
    iget-object v5, p1, Lc1/h0/g/g;->q:Lc1/g0;

    .line 9
    iget-object v5, v5, Lc1/g0;->a:Lc1/a;

    .line 10
    iget-object v5, v5, Lc1/a;->a:Lc1/w;

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    sget-object v5, Lc1/h0/k/h;->c:Lc1/h0/k/h$a;

    .line 13
    sget-object v5, Lc1/h0/k/h;->a:Lc1/h0/k/h;

    .line 14
    iget-object v3, v3, Lc1/h0/g/e$b;->a:Ljava/lang/Object;

    .line 15
    invoke-virtual {v5, v4, v3}, Lc1/h0/k/h;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 17
    iput-boolean v3, p1, Lc1/h0/g/g;->i:Z

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    iget-wide v2, p0, Lc1/h0/g/h;->a:J

    sub-long/2addr p2, v2

    .line 20
    iput-wide p2, p1, Lc1/h0/g/g;->p:J

    return v1

    .line 21
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method