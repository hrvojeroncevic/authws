package hr.hyperionjava.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import hr.hyperionjava.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
