package gwkim.gwcms.cmm.utils.auditing;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import java.time.LocalDateTime;

/**
 * JPA Auditing(공통적으로 가지고 있는 컬럼의 입력을 자동으로 매핑해 줍니다.)
 *
 * @author kimgunwoo
 * @since 2023.10.25
 * @version 1.0v
 */
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
@Getter @Setter
public abstract class BaseEntity {
    @CreatedDate
    @Column(nullable = false, updatable = false)
    private LocalDateTime createDateTime;

    @LastModifiedDate
    @Column(nullable = false)
    private LocalDateTime updateDateTime;
}
