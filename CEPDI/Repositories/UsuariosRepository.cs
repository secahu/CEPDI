using CEPDI.Models;
using CEPDI.Repositories.Interfaces;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace CEPDI.Repositories
{
    public class UsuariosRepository:GenericRepository<UsuariosModel>,IUsuariosRepository
    {

        private static string _tableName = "Usuarios";
        private static string _tableNameV = "Usuarios";
        public UsuariosRepository() : base(_tableName, _tableNameV)
        {
        }


        public async Task<UsuariosModel> getByFiltros(UsuariosModel filtro)
        {
            string where = " WHERE Activo=@Activo ";


            string sql = $"select * " +
                $" from {_tableName}";

            var dictionary = new Dictionary<string, object>
            {
                { "@Activo", 1 }
            };

            if (filtro.Id > 0)
            {
                dictionary.Add("@Id", filtro.Id);
                where += $" and Id=@Id ";
            }

            if (!string.IsNullOrEmpty(filtro.Usuario))
            {
                dictionary.Add("@Usuario", filtro.Usuario);
                where += $" and Usuario=@Usuario ";
            }

            sql += where;
            var parameters = new DynamicParameters(dictionary);
            using (var connection = new SqlConnection(_connection))
            {
                UsuariosModel result = new UsuariosModel();
                try
                {
                    result = await connection.QueryFirstOrDefaultAsync<UsuariosModel>(sql, filtro);
                }
                catch (Exception E)
                {
                    string error = E.Message;
                }

                return result;
            }
        }

    }
}