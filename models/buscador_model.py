from sqlalchemy import Column, Integer, String, Boolean, DateTime,DECIMAL
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()



class Verduras_Model(Base):
    __tablename__ = 'tb_Vegetales'
    id_alimento = Column(Integer, primary_key=True, nullable=False)
    st_alimento = Column(String(50), nullable=True)
    st_cantidad_sugerida = Column(String(50), nullable=True)
    st_unidad = Column(String(50), nullable=True)
    st_peso_neto_g = Column(String(50), nullable=True)
    st_energia_kcal = Column(String(50), nullable=True)
    st_energia_kj = Column(String(50), nullable=True)
    st_proteina_g = Column(String(50), nullable=True)
    st_lipidos_g = Column(String(50), nullable=True)
    st_hidratos_de_carbono_g = Column(String(50), nullable=True)
    st_fibra_g = Column(String(50), nullable=True)
    st_vitamina_A_Mg_RE = Column(String(50), nullable=True)
    st_acido_ascorbico_mg = Column(String(50), nullable=True)
    st_acido_folico_mg = Column(String(50), nullable=True)
    st_hierro_NO_HEM_mg = Column(String(50), nullable=True)
    st_potasio_mg = Column(String(50), nullable=True)
    st_indice_glicemico = Column(String(50), nullable=True)
    st_carga_glicemica = Column(String(50), nullable=True)
    st_categoria = Column(String(50), nullable=True)

    def to_dict(self):
        return {
            "id_alimento": self.id_alimento,
            "st_alimento": self.st_alimento,
            "st_cantidad_sugerida": self.st_cantidad_sugerida,
            "st_unidad": self.st_unidad,
            "st_peso_neto_g": self.st_peso_neto_g,
            "st_energia_kcal": self.st_energia_kcal,
            "st_energia_kj": self.st_energia_kj,
            "st_proteina_g": self.st_proteina_g,
            "st_lipidos_g": self.st_lipidos_g,
            "st_hidratos_de_carbono_g": self.st_hidratos_de_carbono_g,
            "st_fibra_g": self.st_fibra_g,
            "st_vitamina_A_Mg_RE": self.st_vitamina_A_Mg_RE,
            "st_acido_ascorbico_mg": self.st_acido_ascorbico_mg,
            "st_acido_folico_mg": self.st_acido_folico_mg,
            "st_hierro_NO_HEM_mg": self.st_hierro_NO_HEM_mg,
            "st_potasio_mg": self.st_potasio_mg,
            "st_indice_glicemico": self.st_indice_glicemico,
            "st_carga_glicemica": self.st_carga_glicemica,
            "st_categoria": self.st_categoria
            }



