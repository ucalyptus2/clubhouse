.class public final Lc1/h0/j/i;
.super Lc1/h0/f/a;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic e:Lc1/h0/j/d;

.field public final synthetic f:I

.field public final synthetic g:Lokhttp3/internal/http2/ErrorCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLc1/h0/j/d;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    iput-object p5, p0, Lc1/h0/j/i;->e:Lc1/h0/j/d;

    iput p6, p0, Lc1/h0/j/i;->f:I

    iput-object p7, p0, Lc1/h0/j/i;->g:Lokhttp3/internal/http2/ErrorCode;

    .line 1
    invoke-direct {p0, p3, p4}, Lc1/h0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lc1/h0/j/i;->e:Lc1/h0/j/d;

    .line 2
    iget-object v0, v0, Lc1/h0/j/d;->u:Lc1/h0/j/q;

    .line 3
    iget v1, p0, Lc1/h0/j/i;->f:I

    iget-object v2, p0, Lc1/h0/j/i;->g:Lokhttp3/internal/http2/ErrorCode;

    invoke-interface {v0, v1, v2}, Lc1/h0/j/q;->c(ILokhttp3/internal/http2/ErrorCode;)V

    .line 4
    iget-object v0, p0, Lc1/h0/j/i;->e:Lc1/h0/j/d;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lc1/h0/j/i;->e:Lc1/h0/j/d;

    .line 6
    iget-object v1, v1, Lc1/h0/j/d;->K:Ljava/util/Set;

    .line 7
    iget v2, p0, Lc1/h0/j/i;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
